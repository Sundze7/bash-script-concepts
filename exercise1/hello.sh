#!/bin/bash

if [ $age -gt 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi

greet() {
    echo "Hello, $1!"
}
greet "John"
