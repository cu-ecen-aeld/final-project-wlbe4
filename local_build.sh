#!/bin/bash
# export ARCH=aarch64
cd buildroot && RASPI_THERAMIN_OVERRIDE_SRCDIR=/media/data/workspace/coursera/raspi-theramin make raspi-theramin-rebuild && cd ..