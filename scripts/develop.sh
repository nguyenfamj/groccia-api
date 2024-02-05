#!/bin/bash
yarn run seed
medusa migrations run
yarn run build:admin

yarn dev