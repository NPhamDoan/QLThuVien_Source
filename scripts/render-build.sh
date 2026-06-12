#!/bin/bash
# Render Build Command — dùng npm
set -e

# Đảm bảo install cả devDependencies (cần cho build: tsc, vite)
export NODE_ENV=development

echo "=== Installing backend dependencies ==="
cd backend
npm install

echo "=== Installing frontend dependencies ==="
cd ../frontend
npm install

echo "=== Building frontend (Vite) ==="
npm run build

echo "=== Building backend (TypeScript) ==="
cd ../backend
npx tsc

echo "=== Build complete ==="
