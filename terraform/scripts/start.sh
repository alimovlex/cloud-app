#! /usr/bin/env bash

pkill swift
cd .build/release
./cloud-app
cd -
