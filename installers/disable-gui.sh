#!/bin/bash

sudo systemctl enable multi-user.target --force

sudo systemctl set-default multi-user.target
