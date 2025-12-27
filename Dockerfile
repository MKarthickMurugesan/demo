# # Multi-stage Dockerfile for Node.js apps. Adjust if your app uses Python/.NET/etc.
#
# # Build stage
# FROM node:18-alpine AS build
# WORKDIR /app
# # install build tools (if you need git for private deps, add git)
# RUN apk add --no-cache python3 make g++ || true
#
# # copy only package files first for better caching (adjust for yarn/pnpm)
# COPY package*.json ./
# # ...existing code...
# # If you use yarn or pnpm, replace npm ci with appropriate command
# RUN npm ci
#
# # copy remaining source
# COPY . .
#
# # if you have a build step (React/TS/webpack), run it
# # comment out if not needed
# RUN npm run build --if-present
#
# # Production stage
# FROM node:18-alpine AS prod
# WORKDIR /app
# ENV NODE_ENV=production
# # copy only production dependencies + built assets from build stage
# COPY --from=build /app/node_modules ./node_modules
# COPY --from=build /app ./
#
# # Default port (override with env)
# ENV PORT=3000
# EXPOSE ${PORT}
#
# # Default start command; change if your start script is different
# CMD ["npm", "start"]
# # Multi-stage Dockerfile for Node.js apps. Adjust if your app uses Python/.NET/etc.
#
# # Build stage
# FROM node:18-alpine AS build
# WORKDIR /app
# # install build tools (if you need git for private deps, add git)
# RUN apk add --no-cache python3 make g++ || true
#
# # copy only package files first for better caching (adjust for yarn/pnpm)
# COPY package*.json ./
# # ...existing code...
# # If you use yarn or pnpm, replace npm ci with appropriate command
# RUN npm ci
#
# # copy remaining source
# COPY . .
#
# # if you have a build step (React/TS/webpack), run it
# # comment out if not needed
# RUN npm run build --if-present
#
# # Production stage
# FROM node:18-alpine AS prod
# WORKDIR /app
# ENV NODE_ENV=production
# # copy only production dependencies + built assets from build stage
# COPY --from=build /app/node_modules ./node_modules
# COPY --from=build /app ./
#
# # Default port (override with env)
# ENV PORT=3000
# EXPOSE ${PORT}
#
# # Default start command; change if your start script is different
# CMD ["npm", "start"]
#
