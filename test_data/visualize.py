# ./minrt_256.json
# {
#     "data": [
#         {
#             "call": number,
#             "hit": number,
#           }
#         ],
#     "label": {
#         "beq_else:12": number, <- index of the instruction
#         "solve_something:13": number,
#         ...
#     }
#

import json
import os

import matplotlib.pyplot as plt

current_dir = os.path.dirname(os.path.abspath(__file__))

with open(os.path.join(current_dir, "minrt_256.json")) as f:
    data = json.load(f)

calls = [d["call"] for d in data["data"]]
label_map = data["label"]

# visualize only calls

# filtered out label pattern
# beq*, bne*, bge*, ble*

filtered_label_map = {
    k: v
    for k, v in label_map.items()
    if not k.startswith("beq")
    and not k.startswith("bne")
    and not k.startswith("bge")
    and not k.startswith("ble")
}


plt.plot(calls)
plt.xlabel("Instruction index")
plt.ylabel("Number of calls")

plt.figure(figsize=(15, 6))  # Width: 15 inches, Height: 6 inches

# show label_map
# Calculate call sums for each label
label_calls = {}
sorted_indices = sorted(filtered_label_map.values())

for i, (label, idx) in enumerate(filtered_label_map.items()):
    next_idx = (
        sorted_indices[sorted_indices.index(idx) + 1]
        if sorted_indices.index(idx) < len(sorted_indices) - 1
        else len(calls)
    )
    label_calls[label] = sum(calls[idx:next_idx])

# Create a new figure for the calls per label interval
plt.figure(figsize=(15, 8))

# Calculate the threshold (0.1% of total calls)
total_calls = sum(label_calls.values())
threshold = total_calls * 0.001  # Changed from 0.1 to 0.001 (0.1%)

# Sort labels by call count for better visualization and filter out those less than 0.1% of total
sorted_labels = sorted(label_calls.items(), key=lambda x: x[1], reverse=True)
significant_labels = [
    (label, count) for label, count in sorted_labels if count >= threshold
]

labels = [
    label.split(":")[0] for label, _ in significant_labels
]  # Remove the instruction index part
call_counts = [count for _, count in significant_labels]

# Create a bar chart for significant labels
bars = plt.bar(range(len(labels)), call_counts, color="skyblue")
plt.xlabel("Function Labels")
plt.ylabel("Total Number of Calls")
plt.title(f"Call Count per Function Label (≥0.1% of total: {threshold:,.0f} calls)")

# Set x-ticks and labels
plt.xticks(range(len(labels)), labels, rotation=45, ha="right")

# Add value labels on top of bars - now vertical instead of horizontal
for i, bar in enumerate(bars):
    height = bar.get_height()
    percentage = (height / total_calls) * 100
    plt.text(
        bar.get_x() + bar.get_width() / 2.0,
        height + 0.1,
        f"{height:,} ({percentage:.1f}%)",
        ha="center",  # Center align horizontally
        va="bottom",  # Align to bottom of text
        rotation=90,  # Rotate text 90 degrees (vertical)
        fontsize=9,  # Slightly smaller font
    )

plt.tight_layout()
plt.show()
