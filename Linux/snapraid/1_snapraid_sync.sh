#!/bin/bash
echo "Show difference"
snapraid diff
echo "Sync Pool"
snapraid sync
echo "Check for sub zero timestamps"
snapraid touch
echo "status"
snapraid status
echo "finished!"
