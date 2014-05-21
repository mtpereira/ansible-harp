#!/bin/bash

ansible-galaxy install --ignore-errors Ansibles.nodejs Ansibles.build-essential
vagrant provision
