#!/bin/bash
echo "[nodes]" > hosts
kubectl get nodes | awk '{ if (NR!=1) print $1}' >> hosts
