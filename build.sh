#!/bin/bash

# Builda layer
cd hero-repository
npm install
npm run build
npm prune --production
cd ..

rm -rf hero-repository-layer
mkdir -p hero-repository-layer/nodejs/node_modules/hero-repository/dist
cp -R hero-repository/node_modules hero-repository-layer/nodejs
cp -R hero-repository/dist hero-repository-layer/nodejs/node_modules/hero-repository
cp hero-repository/package.json hero-repository-layer/nodejs/node_modules/hero-repository

# Builda função create-hero
cd create-hero
npm install
npm run build
npm prune --production
cd ..
