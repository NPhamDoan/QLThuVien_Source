#!/bin/bash
# Render Build Command
set -e

echo "=== Installing backend dependencies ==="
cd backend
NODE_ENV=development npm install

echo "=== Installing frontend dependencies ==="
cd ../frontend
NODE_ENV=development npm install

echo "=== Building frontend (Vite - production mode) ==="
NODE_ENV=production npm run build

echo "=== Building backend (TypeScript) ==="
cd ../backend
npx tsc

echo "=== Build complete ==="
