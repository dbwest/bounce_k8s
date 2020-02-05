#!/bin/bash
ansible-playbook -i hosts --extra-vars "ansible_user=$USER" --ask-pass --ask-become-pass bounce_k8s.yaml
