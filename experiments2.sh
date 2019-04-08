#!/bin/bash
echo "running experiments 2"

for i in 0 1 2 3 4
do
	export OPENAI_LOGDIR="./var_logs/hopper_$i"
	python3 -m baselines.run --alg=trpo_mpi --env=Hopper-v2 --num_timesteps=1e6 --std=0
	mv std.txt var_logs/hopper_$i/
done
for i in 0 1 2 3 4
do
	export OPENAI_LOGDIR="./var_logs/cheetah_$i"
	python3 -m baselines.run --alg=trpo_mpi --env=HalfCheetah-v2 --num_timesteps=1e6 --std=0
	mv std.txt var_logs/cheetah_$i/
done

