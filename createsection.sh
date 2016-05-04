#!/bin/bash

echo -n "Enter section name: "
read name
echo "Creating section: $name"
hugo new $name.md
hugo new $name/uppgifter.md
