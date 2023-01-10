# lem-in_visualizer
Cool visualizer program for 42 -school algorithms project "lem-in", coded with Love2D.

## Installation

1. Git clone this repo into root of your lem-in project
2. create "maps" and "output" folders in root of your lem-in project
3. copy these lines into the Makefile of your lem-in project:

```
visualize:		all
				sh ./lem-in_visualizer/run_visualizer.sh
visualize_rand:	all
				sh ./lem-in_visualizer/visualize_random.sh
```

If there is something unclear, you can go and check that everything is setup similarly as my own lem-in:
https://github.com/N1GH7C4P/lem-in

## Usage - Any map

If you want to visualize a certain map file, put that file into the "maps" -folder and rename it "visualize_me.map".

(You might need to make a blank visualize_me.output in the /output folder, and maybe give it permissions)

```make visualize```

## Usage - Random map

If you want visualize a random map created with the standard lem-in generator script, run 

```make visualize_rand```
