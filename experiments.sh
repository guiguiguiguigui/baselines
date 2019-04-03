#!/bin/bash
echo "Perform Operation in su mode"

for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.1 1.5 2
do
	echo "Looping ... number $i"
	export OPENAI_LOGDIR="./logs/Cheetah$i"
	python3 -m baselines.run --alg=trpo_mpi --env=HalfCheetah-v2 --num_timesteps=1e6 --std=$i
done

for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.1 1.5 2
do
	echo "Looping ... number $i"
	export OPENAI_LOGDIR="./logs/hopper$i"
	python3 -m baselines.run --alg=trpo_mpi --env=Hopper-v2 --num_timesteps=1e6 --std=$i
done