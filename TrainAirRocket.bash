#!/bin/bash
clear
echo "Input environment number"
read env_number
echo $env_number
echo Input run number
read run_number
echo $run_number
run_id = test_$run_number
env_name = Env/Air_Rocket_$env_number/Air_Rocket.x86_64
clear
# Now vars are set, run the agent
mlagents-learn config.yaml --run-id=$run_id --env=$env_name --no-graphics
