#!/bin/bash
rm /data/db/mongod.lock
mongod --dbpath /data/db --repair
mongod
