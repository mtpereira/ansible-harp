#!/bin/bash

ansible-galaxy install --ignore-errors --force Ansibles.nodejs Ansibles.build-essential
vagrant up
