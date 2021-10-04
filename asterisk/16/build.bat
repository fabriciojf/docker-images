@echo off

set VERSION=16

echo "docker build -t fabriciojf/asterisk:%VERSION% ."
docker build -t fabriciojf/asterisk:%VERSION% .
