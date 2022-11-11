#!/bin/bash

export DISPLAY=":0.0"

gnome-terminal -- sh -c "echo 'I was open through webhooks' && sleep 5"
