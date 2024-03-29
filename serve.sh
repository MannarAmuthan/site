#!/usr/bin/env bash

kill_vite() {
    trap SIGINT
    echo "cleaning up..."
    pkill vite
    exit
}
trap "kill_vite" INT

./go-vite/vite serve &
find pages/ static/ templates/ | entr ./go-vite/vite build

trap SIGINT
