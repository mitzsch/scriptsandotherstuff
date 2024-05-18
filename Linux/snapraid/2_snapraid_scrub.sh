#!/bin/bash
echo "Only scrub newly added files"
snapraid scrub -p new
echo "finished!"
