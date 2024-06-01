#!/usr/bin/python3

# This is mostly ChatGPT generated.

import argparse
from PIL import Image, ImageDraw, ImageFont, ImageSequence
from pathlib import Path

def extract_frames(gif_file):
    with Image.open(gif_file) as im:
        frames = [frame.copy().convert("RGBA") for frame in ImageSequence.Iterator(im)]
    return frames

def create_grid(frames, num_cols, output_file):
    num_frames = len(frames)
    num_rows = (num_frames + num_cols - 1) // num_cols
    frame_size = frames[0].size
    grid_size = (frame_size[0] * num_cols, frame_size[1] * num_rows + 20)
    grid = Image.new("RGBA", grid_size, (255, 255, 255, 255))
    font = ImageFont.truetype("/usr/share/fonts/truetype/lato/Lato-Regular.ttf", 16)
    path = Path(output_file)

    # Add the output file name at the top of the grid
    draw = ImageDraw.Draw(grid)
    draw.text((0, 0), f"{path.name}", font=font, fill=(0, 0, 0, 255))

    for i, frame in enumerate(frames):
        col = i % num_cols
        row = i // num_cols
        x = col * frame_size[0]
        y = row * frame_size[1] + 20  # Add some margin below the output file name
        grid.paste(frame, (x, y))
    return grid

def main():
    parser = argparse.ArgumentParser(description="Extract frames from an animated GIF file and arrange them in a grid.")
    parser.add_argument("gif_file", help="the GIF file to extract frames from")
    parser.add_argument("--num-cols", type=int, default=4, help="the number of columns in the output grid")
    parser.add_argument("--output-file", type=str, default="output.png", help="the output file name")
    args = parser.parse_args()

    frames = extract_frames(args.gif_file)
    grid = create_grid(frames, args.num_cols, args.output_file)
    grid.save(args.output_file)

if __name__ == "__main__":
    main()
