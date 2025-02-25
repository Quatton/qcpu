#![allow(dead_code)]

use std::{
    fs::File,
    io::{Read as _, Write as _},
    path::PathBuf,
};

pub struct PPMImage {
    pub width: usize,
    pub height: usize,
    pub image: Vec<u8>,
}

impl PPMImage {
    fn process_header(file_path: &PathBuf) -> (usize, usize, Vec<u8>) {
        let mut file = File::open(file_path).unwrap_or_else(|_| panic!("{file_path:?} not found"));
        let mut buf = Vec::new();
        file.read_to_end(&mut buf).unwrap();

        let mut bufiter = buf.iter();
        let mut header = String::new();

        let mut read_for = 2;

        for byte in bufiter.by_ref() {
            if *byte == b'\n' {
                read_for -= 1;
                if read_for == 0 {
                    break;
                }
            }
            header.push(*byte as char);
        }

        let header = header.trim().lines().nth(1).unwrap();

        let (width, height) = {
            let mut split = header.split_whitespace();
            let width = split.next().unwrap().parse().unwrap();
            let height = split.next().unwrap().parse().unwrap();
            (width, height)
        };

        (width, height, bufiter.cloned().collect())
    }

    pub fn from_base_on_extension(file_path: &PathBuf) -> Self {
        let ext = file_path.extension().unwrap().to_str().unwrap();
        match ext {
            "ppm" => Self::from_binary(file_path),
            _ => Self::from_plaintext(file_path),
        }
    }

    pub fn from_plaintext(file_path: &PathBuf) -> Self {
        let (width, height, data) = Self::process_header(file_path);

        let data_str = data.iter().map(|x| *x as char).collect::<String>();
        let image = data_str
            .lines()
            .flat_map(|x| x.split_whitespace().take(3))
            .map(|x| x.parse().unwrap())
            .collect::<Vec<_>>();

        Self {
            width,
            height,
            image,
        }
    }

    pub fn from_binary(file_path: &PathBuf) -> Self {
        let (width, height, data) = Self::process_header(file_path);

        let image = data.bytes().map(|x| x.unwrap()).collect::<Vec<_>>();

        Self {
            width,
            height,
            image,
        }
    }

    pub fn diff(&self, other: &Self) -> PPMImage {
        assert_eq!(self.width, other.width);
        assert_eq!(self.height, other.height);

        let mut diff = Vec::new();
        for (a, b) in self.image.iter().zip(other.image.iter()) {
            diff.push(a.wrapping_sub(*b));
        }

        PPMImage {
            width: self.width,
            height: self.height,
            image: diff,
        }
    }

    pub fn contrast(&self, zero: u8, one: u8) -> PPMImage {
        let mut contrast = Vec::new();
        for byte in self.image.iter() {
            contrast.push(if *byte == 0 { zero } else { one });
        }

        PPMImage {
            width: self.width,
            height: self.height,
            image: contrast,
        }
    }

    pub fn export(&self, file_path: &PathBuf) {
        let mut file =
            File::create(file_path).unwrap_or_else(|_| panic!("Failed to create {file_path:?}"));

        writeln!(file, "P6").unwrap();
        writeln!(file, "{} {} 255", self.width, self.height).unwrap();

        for byte in self.image.iter() {
            file.write_all(&[*byte]).unwrap();
        }
    }
}
