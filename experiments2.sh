#!/bin/bash
echo "Perform Operation in su mode"


export OPENAI_LOGDIR="./logs/hopper_init_e"
python3 -m baselines.run --alg=trpo_mpi --env=Hopper-v2 --num_timesteps=1e6 --std=$i
