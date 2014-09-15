#!/bin/bash
docker run -d -P --name mongo --volumes-from data cretzel/rpi-mongodb
