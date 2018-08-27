#!/bin/bash
aws ecs create-cluster --cluster-name "Problem-2-ECS-Cluster"
aws autoscaling create-launch-configuration --launch-configuration-name Launch-Config --image-id ami-6cd6f714 --key-name Problem2 --instance-type t2.micro
aws autoscaling create-auto-scaling-group --auto-scaling-group-name "Auto-Scaling-Group" --launch-configuration-name Launch-Config --min-size 1 --max-size 3 --vpc-zone-identifier subnet-01914049