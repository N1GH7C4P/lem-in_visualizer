./generator --big-superposition > ./maps/visualize_me.map
tail -1 ./maps/visualize_me.map > ./lem-in_visualizer/required
sh ./lem-in_visualizer/run_visualizer.sh