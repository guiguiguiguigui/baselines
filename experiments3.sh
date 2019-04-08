#!/bin/bash
echo "running experiments 3"


export OPENAI_LOGDIR="./logs/cheetah_state_based_var"
python3 -m baselines.run --alg=trpo_mpi --env=HalfCheetah-v2 --num_timesteps=1e6 --std=0
