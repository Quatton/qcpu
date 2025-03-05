# qcpu 

([Japanese below](#japanese) but it's not really complete or well proof-read so please bare with me and refer to the English version when in doubt. Or you can refer to my official CPU実験 report, in which I put a lot more effort into.)

```
.
├── CHANGELOG.md
├── README.md
├── qcpu
├── qcpu_assembler
├── qcpu_simulator
├── qcpu_syntax
```

## Installation

Make sure you have cargo installed.

```sh
# Linux/MacOS
curl https://sh.rustup.rs -sSf | sh

# Windows
winget install -e --id Rustlang.Rustup
```

Then install the qcpu package.

```sh
./install.sh # <- Make sure you're in the root directory of the project
```

## For assembler
  
```sh
qcpu asm -s <input_file> -o <output_file>
```


## For simulator

```sh
qcpu sim -b <input_file_in_binary>

qcpu sim -s <input_file_in_assembly> # Just-in-time assembly

qcpu --help # For more information
```

## Caveats

### Input, output, and log files

Usually we have `contest.sld` but it's not in binary so I built a converter to convert it to binary format.

```sh
qcpu conv -i <input_file> -o <output_file>
```

But I already have `contest` inside `test_data` so you can just use that. Even better, if the program sits inside the `test_data` directory, you don't have to specify the path.

For example this is your full command:

```sh
qcpu sim -i ./test_data/contest -b ./test_data/minrt_128.bin -o ./test_data/minrt_128.ppm --log ./test_data/minrt_128.log
```

You can reduce it to:

```sh
qcpu sim -b minrt_128.bin
```

`--log` will **override** everything in its way so be careful. It's not checked into version control so it's not really recoverable. So omitting it will automatically create a log file with timestamp. If you don't want the log file to clutter your directory, you can just use `--log` to override a single file.

### Compiler and assembly file

The latest version of the `minrt` program is not included in the repository so you should compile it directory from our compiler submodules.

### Restrictions

You might wonder how restrictive the simulator is and how limited the options are. But that's because the simulator is tailored to run this specific `minrt` program. Its default output path is even hardcoded to use `ppm` format. No options to change the memory size or cache size so that code path is predictable and vectors are contiguous in memory. 

You can try other compile features other than default but it's not guaranteed to work. The simulator is optimized for speed. I can guarantee that it will run the `minrt` program as fast as possible.

## About

This project is a simple CPU simulator written in Rust. It is designed for a specific assembly language and instruction set we originally designed.

There might be some seemingly missing features or hard-coded parts but it is because the processor is tailored to run a specific ray tracing program called `minrt` which is a term project for the course "Processor or Comiler Experiment" at the University of Tokyo.

## Original ISA

### Instructions

The assembler handles the following instructions:

(Well-known instructions will not be explained here.)

**Arithmetic Instructions**
- `ADD`
- `SUB`
- `AND`
- `OR`
- `XOR`
- `SLL`
- `SRL`

> As you can see, we didn't even implement arithemetic shifts or even `MUL` and `DIV`. This is because the `minrt` program doesn't use them. There will be more examples like this in the future.

**Immediate Instructions**
- `ADDI`
- `SLLI`
- `SRLI`
  
**Memory Instructions**
- `LW`
- `LWR` ✨ This is a custom instruction that use both `rs1` and `rs2` as offsets. This seemingly helps reduce `ADD` + `LW` into a single instruction.
- `SW`

**Branch Instructions**
- `BEQ`
- `BNE`
- `BLT`
- `BGE`
  
**Jump Instructions**
- `JAL`
- `JALR`

**Miscellaneous Instructions**
- `LUI`

**Pseudo Instructions**
- `LI` ✨ This is a custom instruction that loads an immediate value into a register. While this is commonly used in RISC-V, it has a special place here which we will explain later.

**Floating Point Instructions**
- `FADD`
- `FSUB`
- `FMUL`
- `FDIV`
- `FSGNJ`
- `FSGNJN`
- `FSGNJX`
- `FTOI`
- `FITOF`
- `FEQ`
- `FLT`
- `FLE`
- `FSQRT`

We don't handle pseudo instructions in floating points. Need `FMOV`? Just use `FSGNJ` with `x0`. Also `FCVT.W.S` and `FCVT.S.W` are changed to `FTOI` and `FITOF` due to common misunderstanding of the original instructions. (That's why I didn't even say "respectively" because I'm not even sure if it's correct.)

**I/O Instructions**
- `INW`
- `OUTB`

Because we print chars but take ints and floats...

### Hybrid Register File

It follows the RISC-V convention until...

we found out that if we shrink opcode to 4 bits, throw away unused instructions, and expand the register file to 64, we can use floating point registers interchangeably with integer registers. This allows use to use `li fa0 1.0` to load a float value into a register. (Originally we had to use `li a0 0x3f800000`, `sw a0 0(sp)`, `flw fa0 0(sp)`.
Waste of CPU cycles, right? That's also why we didn't have both `flw` and `lw` because you could've just used `lw` with a floating point register.)

Also, comparison instructions in floating points use both integer and floating point registers. This was a bit tricky to implement when it uses both register files.

And lastly, to figure out forwarding and hazard detection, we had to check if the register is the same type before comparing the register number. (Our core department
(コア係) is not having it.)

## Assembler

The assembler is written using `nom` as a parser combinator library. It is not very easy to read hence I had to rewrite from scratch as `v2` but I heard it's quite fast (or so I hope). Since the assembler is not the main focus of the project, it is made once and forgotten. We will not talk about `v1` here because it used to handle a different instruction set.

First, assembly codes are normalized by removing comments, replacing commas with whitespaces, and converting to lowercase. Then, labels and instructions are parsed separately. Labels are stored in a hashmap where each label points to the last instruction number when it is parsed (that means jumping here will land at the next instruction). 

`li` pseudo instructions are replaced with `lui` and `addi` with the immediate value. `li` that doesn't exceed the window of `addi` is replaced with `addi` only. `li label` will be replaced with the address of the label. Since the program is not very large, we didn't need `auipc`. In simulator `v2`, we used to have `ebreak` and `etime` instructions but they were not handled in `v4` 

After parsing instructions, the labels are replaced with the actual instruction number. No more removing and filtering can be done after this point because the offset will be incorrect.

The generated syntax tree depends on the `qcpu_syntax` crate. It is (technically, used to be) a shared crate between the assembler and the simulator. (In `v4`, simulator has its own decoder and structures.) The syntax object `Op` can decode or generate raw machine codes, so it is a really convenient serializer and deserializer.

Syntax objects are built with `enum_properties` macro which I copied from the `enum_properties` crate because I need to add customizations to link it with `strum` crate. `strum` will help us generate `FromStr` and `ToString` implementations for the enum and its variants which is really useful for parsing and debugging.

We use `Op::raw` to convert them into raw machine codes and write them into a file.

## Simulator

In Simulator `v1`, we built a TUI to help visualize the pipeline, but it turns out to be really slow (due to multithreading with I/O) and hard to debug. Fibonacci codes run in **milliseconds**. So in `v2`, building a TUI wasn't our main focus. We just wanted to run the `minrt` program as fast as possible.

Our processor is a 5-stage pipeline processor. In `v1`, we actually did build the pipeline simulator but it was too slow, data hazards were not handled properly, and structs are cloned every cycle. Too many bugs that weren't even our compiler department's (コンパイラ係) fault popped up. (Our core department (コア係) is not having it.) 

So in `v2`, we just scrap it all over and build a single cycle simulator. It is much faster and data flows linearly. How about data hazards? We just +1 in the cycle count and call it a day. Forwarding is done naturally. It's just one variable to the next. Then after adding memory, I/O, cache, branch prediction, it became a total mess. It was really slow and used to run 128x128 `minrt` in **5 minutes**. (You will be surprised how fast it is right now. Half of the courtesy goes to the compiler department (コンパイラ係) that optimized the instructions.)

In `v4`, we just scrapped everything and built a new simulator that solely focuses on speed. Most of the thing is hard-coded because most of the specs are not as experimental as before. 

We will go through each stage of the pipeline.

### Fetch
We precompute the binary file into a vector of `OpV4` (haha due to multiple name clashes on import so I just say well let's stick a `V4` in front of it). Then fetch is just fetching the pre-decoded instruction.

### Decode
We did pre-decode the instructions, but I mentioned that in v4, simulator has its own decoder. So I will talk about it here. We use `bitvec` crate which is a really useful tool to avoid the `|<<7|34<<>>676>31<&Fabc` kind of mess.

That made a lot of things easier, and by pre-decoding, I don't have to worry that the function is too slow because it's run only once per instruction.

### Execute
Most of the instructions are just handled by Rust native implementations. However, for FPU, I need to write a software simulation to match with the actual processor.

I also handle memory in `execute` method (lol) because it's much faster to write the match statement only once since we can't match the instruction by opcodes anymore. Why?

Because `OpV4` object is copied every cycle, I need to worry about its size so `Opcode` is not included in the object. `OpName` is of size u8. `rs1`, `rs2`, `rd` are all u8. So these 4 pack nicely into a 32-bit integer. With `imm` of size u32, it's 64-bit. It's quite large now so I dropped the `Opcode` field. I have to match `L` instruction by matching `Lwr` and `Lw` at the same time. It's a bit tedious but at least every cycle is faster.

Every op just goes into a huge match net and is handled separately. It deref the register object as needed (because copying costs) and write back to the register file directly.

### Memory

Memory is just a vector of `u32` (not `u8`!) This is due to the idea that we never use `lb` or `lh` instructions. Therefore we have `lw` use word-addressed memory. It's much faster because we don't have to `sll` by 2 every time in a loop. To accommodate that I used `u32` instead of `u8`.

Memory is of size 2MB. Not sure if it's larger in the real processor but smaller memory size is faster to simulate. Memory and cache are handled separately and cache lines are blank with only tags. We will talk more about cache in the [Statistics](#statistics) section.

In real processor, we handle I/O as memory-mapped I/O but in simulator, we just use preloaded `BufReader` and `BufWriter`. For `INW` stalls, baud rate, and idk whatever that is, we just add a constant delay to the cycle count and wave it off.

### Writeback

Writeback is just writing back to the register file. Nothing special here.

## Statistics

(Some numbers here are not accurate anymore. I changed a lot of stuff during the final days and just went with it. For example direct-mapped cache is 99% hit. If you have my official Japanese report, that's more up-to-date.)

### Cache

Cache is a direct-mapped cache with 16384 lines. In a direct-mapped cache, we usually need tag, data, and valid bits. However, due to how perfectly our memory is sized, there is a clever trick to fit all of these in a single `u8` integer. 

After doing some math I found out that if 14 bits are used for index, our 21-bit address leaves only 7 bits for the tag. This is perfect because we can use the remaining bit for the valid bit. I just initialize every thing with `u8::MAX` (255) and just cross my fingers.

Cache used to have both `Cache::read` and `Cache::write`, but after removing data from cache lines, we only have `replace` that is just like write but with a different name to indicate that we share this method with the read operation.

Because we also read from main memory every time, we also replace the cache line with that value regardless of hit or miss, read, or write. We know that this piece of data will stay there, so this shortcuts all the necessary control flow making the cache much faster. And the tag is automatically valid because it doesn't have the 8th bit set.

Then we can just return the hit normally and use for our statistics

```rs
impl CacheLine {
    pub fn replace(&mut self, addr: usize) -> bool {
        let tag = (addr >> CACHE_LINE_BITS) as u8;
        let hit = self.tag == tag;
        self.tag = tag;
        hit
    }
}
```

This was the statistics for 256 x 256 `minrt` program.

```
16384 lines direct-mapped cache
Read: 2081310763, Hit: 1918504700 (92.18%), Miss: 162806063 (7.82%)
Write: 471382779, Hit: 468238447 (99.33%), Miss: 3144332 (0.67%)
```

### Branch Prediction

I don't use branch prediction in the program because my simulator is single-cycle. So I just predict and update the table directly. The spec is exactly the same with the real processor. Then I tally up the hit and total count to calculate the accuracy and for time prediction.

```rs
match op.opname {
  OpName::Jalr => {
      self.total_count_jalr += 1;
      let idx = pci & JALR_ADDR_MASK;
      let predicted_pc = if self.jalr_addr[idx] == 0 {
          untaken
      } else {
          self.jalr_addr[idx]
      };

      // Here I just predict and use it internally
      // because real program doesn't need the predicted value
      let update = next_pc != predicted_pc;
      if update {
          self.flush_count_jalr += 1;
          self.jalr_addr[idx] = next_pc;
      }
      update
  }
  // ...
}
```

This was the statistics for 256 x 256 `minrt` program.

```
JALR Flush Count: 9266850 (15.36%)
Branch Flush Count: 80474384 (12.08%)
```

This result is really good but sadly it's not really significant. The cost of flush is like 1% of the cache miss time. But it's good to know that it's working as intended.

### Time prediction and cycle-accurate simulation


Wait, but your simulator is single-cycle. How can you predict the time accurately? Because `minrt` is a sizeable program, we can predict the time by counting the maximum time each cycle takes and summing them up. First, because the program doesn't exceed `16384` lines, we just count how many calls each line is executed.

After that we have a `hit` and `call` for every line in the code. 

```rs
// Serialize is from serde which we will use to output the statistics as JSON later
#[derive(Debug, Default, Clone, Serialize)]
pub struct Instat {
    pub hit: u64,
    pub call: u64,
}
```

Tallying up the instruction count is straight forward, we just `+= call` every time.

However, for cycle count, it depends on the cache hit status and hazards. First off, we have to get the delay constant for each instruction. Let's call it `delay`. Then we have to check if the previous instruction is a memory instruction and if it's a hazard. There are 3 main cases:

1. Previous instruction isn't a memory instruction. So it's just `call * delay`
2. Previous instruction is a memory instruction and it's not a hazard. So it's `call * (delay.max(cache_hit_delay)) + (call - hit) * (delay.max(cache_miss_delay))`. However, cache miss delay is huge so we don't have to actually compared it to delay. This is because if previous instruction is a miss, the `delay` here doesn't actually matter if we have to wait on the cache miss anyway.
3. Previous instruction is a memory instruction and it's a hazard. So it's `call * (cache_hit_delay + delay) + (call - hit) * (cache_miss_delay + delay)`. This is because we have to wait for the cache hit delay and then the delay itself.

Lastly we just add (flush count by branch prediction) * 2 to the cycle count.

And as a result, we have a cycle-accurate simulation.
This was the core result:
```
128 -> 50.5892s
256 -> 163.2348s
512 -> 567.3377s
```

And this was my result:
```
128 -> 51.063196s
256 -> 164.263677s
512 -> 567.723689s
```

Which is in a 3% error margin. Not bad for a huge approximation.

We did account for baud rate sampling and I/O stalls but `INW` and `OUTB` are used so infrequently that it doesn't affect the time prediction.

I also add a statistics on the ranking of how many times each load instruction is a cache miss, and also how each delay contributes to the total time.


This was for 256 x 256 `minrt` program.

```
JALR Flush Count: 9266850 (15.36%)
Branch Flush Count: 80474384 (12.08%)
Time optimization info:
Should complete in: 164.647294s for a clock of 125 MHz
Hazard time with cache hit: 1.512083s (0.92%)
Cache miss time: read: 74.239564s (45.09%), write: 1.433815s (0.87%)
JALR flush time: 148.269ms (0.09%)
Branch flush time: 1.28759s (0.78%)
```

As you can see, flush time by branch prediction is completely negligible to consider something like "parallel branch mining" or something I have heard of. Also, hazard time is too small to consider an Out-of-Order execution. The actual culprit is cache miss time. It's almost half of the total time. 

This is how we know how we made a good decision and how we can improve the performance in the future.

This is per-instruction cache miss ranking:

```
Per-instruction Stat
PC   Label              Read       Miss     Rate
3728 beq_else.20015     33702624   19627204 58.24%
3844 beq_else.20037     17278313   12935550 74.87%
3852 beq_else.20037     17278313   12733101 73.69%
3849 beq_else.20037     17278313   12452606 72.07%
3847 beq_else.20037     17278313   11867242 68.68%
3735 beq_else.20015     12375262    9851095 79.60%
3733 beq_else.20015     12375262    9448502 76.35%
```

As you can see we have labels to convenienty link back to the source code. This is because we use a JIT assembler so that we cache the label map to use for later reference.

So that was pretty much it.

### But how FAST can we simulate?

Usually with statistics and accurate FPU simulation, it could take quite some time.

However, if we remove statistics collection and use Rust native floating point operations.

32x32 can be done in 0.5s,
128x128 can be done in 3s,
256x256 can be done in 10s,
512x512 can be done in 40s.

So this is a 15~20x speed up from the cycle-accurate simulation. MacBook Air M3 has 4.05 GHz. Theoretically, we could simulate this in 32x speed up. But we have to consider that we have a lot of overheads, saying we run two programs at 16x is quite impressive.

yeah that's all I have to say.

# Japanese 

([English above](#qcpu))

## インストール

cargo がインストールされていることを確認してください。

```sh
# Linux/MacOS
curl https://sh.rustup.rs -sSf | sh

# Windows
winget install -e --id Rustlang.Rustup
```

その後、qcpu パッケージをインストールします。

```sh
./install.sh # <- プロジェクトのルートディレクトリにいることを確認してください
```

## アセンブラの使用方法
  
```sh
qcpu asm -s <入力ファイル> -o <出力ファイル>
```

## シミュレータの使用方法

```sh
qcpu sim -b <バイナリファイル>

qcpu sim -s <アセンブリファイル> # JITコンパイル

qcpu --help # 詳細情報
```

## 注意点

### 入出力とログファイル

通常、`contest.sld`がありますが、バイナリ形式ではないため、バイナリ形式に変換するコンバーターを作成しました。

```sh
qcpu conv -i <入力ファイル> -o <出力ファイル>
```

ただし、`test_data`の中に`contest`が既にあるため、それを使用できます。さらに良いことに、プログラムが`test_data`ディレクトリ内にある場合、パスを指定する必要はありません。

たとえば、完全なコマンドは次のようになります。

```sh
qcpu sim -i ./test_data/contest -b ./test_data/minrt_128.bin -o ./test_data/minrt_128.ppm --log ./test_data/minrt_128.log
```

次のように短縮できます。

```sh
qcpu sim -b minrt_128.bin
```

`--log`はすべてを**上書き**するため、注意してください。バージョン管理されていないため、復元は困難です。したがって、省略すると、タイムスタンプ付きのログファイルが自動的に作成されます。ログファイルでディレクトリが散らかるのを避けたい場合は、`--log`を使用して単一のファイルを上書きできます。

### コンパイラとアセンブリファイル

`minrt`プログラムの最新バージョンはリポジトリに含まれていないため、コンパイラサブモジュールから直接コンパイルする必要があります。

### 制限事項

シミュレータがどれほど制限的で、オプションがどれほど限られているのか疑問に思うかもしれません。しかし、それはシミュレータがこの特定の`minrt`プログラムを実行するように調整されているためです。デフォルトの出力パスは`ppm`形式を使用するようにハードコードされています。メモリサイズやキャッシュサイズを変更するオプションはないため、コードパスは予測可能で、ベクトルはメモリ内で連続しています。

デフォルト以外のコンパイル機能を試すこともできますが、動作は保証されていません。シミュレータは速度のために最適化されています。`minrt`プログラムを可能な限り高速に実行することを保証できます。

## プロジェクトについて

このプロジェクトは、Rustで書かれたシンプルなCPUシミュレータです。東京大学の「プロセッサ実験」という授業の課題として、独自に設計した命令セットとアセンブリ言語のために作られました。

一見、機能が不足していたりハードコードされている部分が多く見えるかもしれませんが、これは「minrt」という特定のレイトレーシングプログラムを実行するために最適化されているためです。

## 独自ISA

### 命令セット

アセンブラは以下の命令をサポートしています：

（一般的な命令については説明を省略します）

**算術命令**
- `ADD`
- `SUB`
- `AND`
- `OR`
- `XOR`
- `SLL`
- `SRL`

> ご覧の通り、算術シフトどころか`MUL`や`DIV`すら実装していません。これは`minrt`プログラムがこれらを使用しないためです。このような割り切りは他にもたくさんあります。

**即値命令**
- `ADDI`
- `SLLI`
- `SRLI`
  
**メモリ命令**
- `LW`
- `LWR` ✨ これは`rs1`と`rs2`の両方をオフセットとして使用するカスタム命令です。`ADD` + `LW`を1命令に圧縮できます。
- `SW`

**分岐命令**
- `BEQ`
- `BNE`
- `BLT`
- `BGE`
  
**ジャンプ命令**
- `JAL`
- `JALR`

**その他の命令**
- `LUI`

**擬似命令**
- `LI` ✨ レジスタに即値をロードするカスタム命令です。RISC-Vでは一般的ですが、ここでは特別な役割があります。後ほど説明します。

**浮動小数点命令**
- `FADD`
- `FSUB`
- `FMUL`
- `FDIV`
- `FSGNJ`
- `FSGNJN`
- `FSGNJX`
- `FTOI`
- `FITOF`
- `FEQ`
- `FLT`
- `FLE`
- `FSQRT`

浮動小数点の擬似命令はサポートしていません。`FMOV`が必要な場合は、`x0`を使って`FSGNJ`を使用してください。また、`FCVT.W.S`と`FCVT.S.W`は元の命令の誤解が多かったため、`FTOI`と`FITOF`に変更されました（どちらがどちらに対応するのかすら自信がないので、あえて「それぞれ」とは書きませんでした）。

**I/O命令**
- `INW`
- `OUTB`

文字を出力する一方で、整数と浮動小数点数を入力として受け取るため...

### ハイブリッドレジスタファイル

RISC-Vの規約に従っていましたが...

オペコードを4ビットに縮小し、使用していない命令を削除し、レジスタファイルを64個に拡張することで、浮動小数点レジスタと整数レジスタを相互に使用できることに気付きました。これにより、`li fa0 1.0`のように浮動小数点値を直接レジスタにロードできます（以前は`li a0 0x3f800000`、`sw a0 0(sp)`、`flw fa0 0(sp)`という手順が必要でした。CPUサイクルの無駄ですよね？そのため、`flw`と`lw`の両方は実装せず、浮動小数点レジスタに対して`lw`を使用できるようにしました）。

また、浮動小数点の比較命令は整数レジスタと浮動小数点レジスタの両方を使用します。これは、両方のレジスタファイルを使用する際に実装が少し複雑になりました。

最後に、フォワーディングとハザード検出のために、レジスタ番号を比較する前にレジスタの種類が同じかどうかを確認する必要がありました（コア係は大変そうでしたね）。

## アセンブラ

アセンブラは`nom`というパーサーコンビネータライブラリを使用して書かれています。読みづらいため`v2`として一から書き直す必要がありましたが、速いと聞いています（願わくば）。アセンブラはプロジェクトの主眼ではないため、一度作って放置状態です。`v1`は異なる命令セットを扱っていたため、ここでは触れません。

まず、アセンブリコードはコメントを削除し、カンマをスペースに置き換え、小文字に変換することで正規化されます。その後、ラベルと命令が別々にパースされます。ラベルはハッシュマップに格納され、各ラベルはパース時の最後の命令番号を指します（つまり、ここにジャンプすると次の命令にたどり着きます）。

`li`擬似命令は、即値に応じて`lui`と`addi`に置き換えられます。`addi`の即値の範囲内に収まる`li`は`addi`のみに置き換えられます。`li label`はラベルのアドレスに置き換えられます。プログラムが大きくないため、`auipc`は必要ありませんでした。シミュレータ`v2`では`ebreak`と`etime`命令がありましたが、`v4`では扱われていません。

命令のパース後、ラベルは実際の命令番号に置き換えられます。この時点以降は、オフセットが正しく保たれるように、これ以上の削除やフィルタリングはできません。

生成された構文木は`qcpu_syntax`クレートに依存しています。これは（技術的には、かつては）アセンブラとシミュレータの間で共有されているクレートです（`v4`では、シミュレータは独自のデコーダーと構造体を持っています）。構文オブジェクト`Op`は生のマシンコードをデコードまたは生成できるため、非常に便利なシリアライザーおよびデシリアライザーとなっています。

構文オブジェクトは`enum_properties`マクロを使って構築されています。これは`enum_properties`クレートからコピーしたものですが、`strum`クレートとリンクするためにカスタマイズを加える必要がありました。`strum`はenumとその変数に対して`FromStr`と`ToString`の実装を生成するのに役立ち、パースとデバッグに非常に便利です。

`Op::raw`を使用してこれらを生のマシンコードに変換し、ファイルに書き込みます。

## シミュレータ

シミュレータ`v1`では、パイプラインを可視化するためにTUIを構築しましたが、（I/Oを伴うマルチスレッディングのため）非常に遅く、デバッグが困難でした。フィボナッチのコードは**ミリ秒**で実行されます。そのため、`v2`ではTUIの構築は主眼ではありませんでした。単に`minrt`プログラムをできるだけ高速に実行することを目指しました。

プロセッサは5ステージパイプラインプロセッサです。`v1`では実際にパイプラインシミュレータを構築しましたが、あまりに遅く、データハザードが適切に処理されず、構造体が毎サイクルクローンされていました。コンパイラ係の責任ではない多くのバグが発生しました（コア係は大変そうでしたね）。

そこで`v2`では、全てを破棄して単一サイクルシミュレータを構築しました。はるかに高速で、データは線形に流れます。データハザードについては？サイクルカウントを+1してそれで終わりです。フォワーディングは自然に行われます。次の変数に値を渡すだけです。その後、メモリ、I/O、キャッシュ、分岐予測を追加すると、完全に混沌としました。非常に遅く、128x128の`minrt`の実行に**5分**かかっていました（現在の速度を見ると驚くでしょう。その半分は命令を最適化したコンパイラ係のおかげです）。

`v4`では、全てを破棄して速度のみに焦点を当てた新しいシミュレータを構築しました。仕様の多くが以前ほど実験的ではないため、多くの部分がハードコードされています。

パイプラインの各ステージについて説明しましょう。

### フェッチ
バイナリファイルを事前に`OpV4`のベクトルにデコードします（複数の名前の衝突があったため、前に`V4`を付けることにしました）。フェッチは事前デコードされた命令を取得するだけです。

### デコード
命令は事前デコードされていますが、v4ではシミュレータが独自のデコーダーを持っているため、ここで説明します。`bitvec`クレートを使用しており、これは`|<<7|34<<>>676>31<&Fabc`のような混乱を避けるのに非常に便利なツールです。

これにより多くのことが容易になり、事前デコードによって、この関数が遅いことを心配する必要がなくなりました。命令ごとに一度だけ実行されるためです。

### 実行
ほとんどの命令はRustネイティブの実装で処理されます。ただし、FPUについては、実際のプロセッサと一致するようにソフトウェアシミュレーションを書く必要がありました。

また、メモリを`execute`メソッドで処理しています（笑）。これは、オペコードによる命令の照合ができなくなったため、matchステートメントを一度だけ書く方が高速だからです。なぜでしょうか？

`OpV4`オブジェクトは毎サイクルコピーされるため、そのサイズを気にする必要があり、`Opcode`はオブジェクトに含まれていません。`OpName`はu8サイズ、`rs1`、`rs2`、`rd`もすべてu8です。これら4つは32ビット整数にうまく収まります。u32サイズの`imm`を含めると64ビットになります。かなり大きくなったので`Opcode`フィールドを削除しました。`L`命令を`Lwr`と`Lw`を同時に照合する必要があります。少し面倒ですが、少なくとも各サイクルは高速です。

すべての命令は大きなmatchネットに入り、個別に処理されます。必要に応じてレジスタオブジェクトを参照解除し（コピーがコストがかかるため）、レジスタファイルに直接書き込みます。

### メモリ

メモリは単なる`u32`のベクトルです（`u8`ではありません！）。これは`lb`や`lh`命令を使用しないという考えに基づいています。そのため、`lw`はワードアドレスメモリを使用します。ループ内で毎回2で`sll`する必要がないため、はるかに高速です。これに対応するため、`u8`の代わりに`u32`を使用しています。

メモリサイズは2MBです。実際のプロセッサでもっと大きいかもしれませんが、小さいメモリサイズの方がシミュレーションが速くなります。メモリとキャッシュは別々に処理され、キャッシュラインはタグのみを持つ空のものです。キャッシュについては[統計](#統計)セクションで詳しく説明します。

実際のプロセッサではI/OはメモリマップドI/Oとして処理されますが、シミュレータでは事前にロードされた`BufReader`と`BufWriter`を使用します。`INW`のストール、ボーレート、その他の何かについては、サイクルカウントに定数の遅延を追加して済ませています。

### ライトバック

ライトバックは単にレジスタファイルに書き戻すだけです。特筆すべきことはありません。

## 統計

### キャッシュ

キャッシュは16384ラインのダイレクトマップドキャッシュです。ダイレクトマップドキャッシュでは通常、タグ、データ、有効ビットが必要です。しかし、メモリのサイズが完璧に設計されているため、これらすべてを単一のu8整数に収める巧妙な方法があります。

計算の結果、14ビットをインデックスに使用すると、21ビットのアドレスはタグに7ビットしか残しません。これは完璧です。なぜなら、残りの1ビットを有効ビットとして使用できるからです。すべてを`u8::MAX`（255）で初期化し、うまくいくことを祈るだけです。

キャッシュには以前`Cache::read`と`Cache::write`の両方がありましたが、キャッシュラインからデータを削除した後は、読み取り操作と共有するメソッドであることを示すため、名前を変更した`replace`のみを持つようになりました。

メインメモリから毎回読み取りを行うため、ヒットかミスか、読み取りか書き込みかに関係なく、そのデータでキャッシュラインを置き換えます。そのデータがそこに残ることがわかっているため、これにより必要な制御フローをショートカットし、キャッシュをはるかに高速化できます。また、タグは8ビット目が設定されていないため、自動的に有効になります。

その後、ヒットを通常通り返し、統計に使用できます。

```rs
impl CacheLine {
    pub fn replace(&mut self, addr: usize) -> bool {
        let tag = (addr >> CACHE_LINE_BITS) as u8;
        let hit = self.tag == tag;
        self.tag = tag;
        hit
    }
}
```

これは256 x 256の`minrt`プログラムの統計です：

```
16384ラインのダイレクトマップドキャッシュ
読み取り：2081310763回、ヒット：1918504700回（92.18%）、ミス：162806063回（7.82%）
書き込み：471382779回、ヒット：468238447回（99.33%）、ミス：3144332回（0.67%）
```

### 分岐予測

シミュレータは単一サイクルのため、分岐予測は使用していません。そのため、テーブルを直接予測および更新します。仕様は実際のプロセッサと全く同じです。その後、ヒット数と総数を集計して精度を計算し、時間予測に使用します。

```rs
match op.opname {
    OpName::Jalr => {
        self.total_count_jalr += 1;
        let idx = pci & JALR_ADDR_MASK;
        let predicted_pc = if self.jalr_addr[idx] == 0 {
            untaken
        } else {
            self.jalr_addr[idx]
        };

        // ここでは予測を行い、内部で使用するだけです
        // 実際のプログラムは予測値を必要としないため
        let update = next_pc != predicted_pc;
        if update {
            self.flush_count_jalr += 1;
            self.jalr_addr[idx] = next_pc;
        }
        update
    }
    // ...
}
```

これは256 x 256の`minrt`プログラムの統計です：

```
JALRフラッシュ回数：9266850回（15.36%）
分岐フラッシュ回数：80474384回（12.08%）
```

この結果は非常に良好ですが、残念ながらあまり重要ではありません。フラッシュのコストはキャッシュミス時間の1%程度です。ただし、意図した通りに動作していることがわかって良かったです。

### 時間予測とサイクル精度シミュレーション

待って、でもシミュレータは単一サイクルですよね。どうやって時間を正確に予測できるのでしょうか？`minrt`はそれなりの規模のプログラムなので、各サイクルにかかる最大時間を数え上げて合計することで時間を予測できます。まず、プログラムは`16384`行を超えないため、各行が実行される回数を数えるだけです。

その後、コードの各行に対して`hit`と`call`を持ちます。

```rs
// Serializeはserdeからのもので、後で統計をJSONとして出力するために使用します
#[derive(Debug, Default, Clone, Serialize)]
pub struct Instat {
    pub hit: u64,
    pub call: u64,
}
```

命令カウントの集計は単純で、毎回`call`を加算するだけです。

しかし、サイクルカウントは、キャッシュヒットの状態とハザードに依存します。まず、各命令の遅延定数を取得する必要があります。これを`delay`と呼びましょう。次に、前の命令がメモリ命令かどうか、それがハザードかどうかを確認する必要があります。主に3つのケースがあります：

1. 前の命令がメモリ命令でない場合。単に`call * delay`です。
2. 前の命令がメモリ命令で、ハザードでない場合。`call * (delay.max(cache_hit_delay)) + (call - hit) * (delay.max(cache_miss_delay))`です。ただし、キャッシュミスの遅延は非常に大きいため、実際に遅延と比較する必要はありません。これは、前の命令がミスの場合、キャッシュミスを待つ必要があるため、ここでの`delay`は実際には関係ないためです。
3. 前の命令がメモリ命令で、ハザードの場合。`call * (cache_hit_delay + delay) + (call - hit) * (cache_miss_delay + delay)`です。これは、キャッシュヒットの遅延を待ってから遅延自体を待つ必要があるためです。

最後に、分岐予測によるフラッシュ回数 * 2をサイクルカウントに加算します。

その結果、サイクル精度のシミュレーションが得られます。
これがコアの結果です：
```
128 -> 50.5892秒
256 -> 163.2348秒
512 -> 567.3377秒
```

そして、これが私の結果です：
```
128 -> 51.063196秒
256 -> 164.263677秒
512 -> 567.723689秒
```

これは3%の誤差範囲内です。大きな近似にしてはかなり良好です。

ボーレートのサンプリングとI/Oストールも考慮しましたが、`INW`と`OUTB`はあまりに使用頻度が低いため、時間予測に影響を与えません。

また、各ロード命令がキャッシュミスになる回数のランキングと、各遅延が全体の時間にどのように寄与しているかについての統計も追加しました。

これは256 x 256の`minrt`プログラムの結果です：

```
JALRフラッシュ回数：9266850回（15.36%）
分岐フラッシュ回数：80474384回（12.08%）
時間最適化情報：
125 MHzのクロックで164.647294秒で完了予定
キャッシュヒット時のハザード時間：1.512083秒（0.92%）
キャッシュミス時間：読み取り：74.239564秒（45.09%）、書き込み：1.433815秒（0.87%）
JALRフラッシュ時間：148.269ミリ秒（0.09%）
分岐フラッシュ時間：1.28759秒（0.78%）
```

ご覧の通り、分岐予測によるフラッシュ時間は「並列分岐マイニング」とか聞いたことがあるようなものを考慮するほど重要ではありません。また、ハザード時間もアウトオブオーダー実行を考慮するほど大きくありません。実際の問題はキャッシュミス時間です。全体の時間のほぼ半分を占めています。

これにより、私たちが良い決定を下し、将来どのようにパフォーマンスを改善できるかがわかります。

これは命令ごとのキャッシュミスランキングです：

```
命令ごとの統計
PC   ラベル             読み取り    ミス      率
3728 beq_else.20015    33702624   19627204 58.24%
3844 beq_else.20037    17278313   12935550 74.87%
3852 beq_else.20037    17278313   12733101 73.69%
3849 beq_else.20037    17278313   12452606 72.07%
3847 beq_else.20037    17278313   11867242 68.68%
3735 beq_else.20015    12375262    9851095 79.60%
3733 beq_else.20015    12375262    9448502 76.35%
```

ご覧の通り、ソースコードに簡単に戻れるようにラベルがあります。これはJITアセンブラを使用しており、後で参照するためにラベルマップをキャッシュしているためです。

以上が主な内容です。

### でもどれくらい高速にシミュレートできるの？

通常、統計収集と正確なFPUシミュレーションを行うとかなりの時間がかかります。

しかし、統計収集を削除し、Rustネイティブの浮動小数点演算を使用すると：

32x32は0.5秒で完了、
128x128は3秒で完了、
256x256は10秒で完了、
512x512は40秒で完了。

これはサイクル精度のシミュレーションから15~20倍の高速化です。MacBook Air M3は4.05 GHzです。理論的には、32倍の速度でシミュレートできるはずです。しかし、多くのオーバーヘッドがあることを考慮すると、16倍の速度で2つのプログラムを実行することはかなり印象的です。

はい、以上です。


