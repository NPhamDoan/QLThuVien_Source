#!/bin/bash
# Render Build Command — dùng npm, không cần pnpm
set -e

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
