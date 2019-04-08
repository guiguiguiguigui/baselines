#!/bin/bash
echo "running experiment 3"

for i in 0 1 2
do
	export OPENAI_LOGDIR="./var_logs/long/cheetah_var_$i"
	python3 -m baselines.run --alg=trpo_mpi --env=HalfCheetah-v2 --num_timesteps=1e7 --std=0
	mv std.txt var_logs/long/cheetah_var_$i/
done
for i in 0 1 2
do
	export OPENAI_LOGDIR="./var_logs/long/cheetah_$i"
	python3 -m baselines.run --alg=trpo_mpi --env=HalfCheetah-v2 --num_timesteps=1e7 --std=1
	mv std.txt var_logs/long/cheetah_$i/
done
