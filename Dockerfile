FROM node:24-alpine AS builder
WORKDIR ./

# Install build dependencies
COPY package*.json ./
RUN npm ci

# Copy source and build
COPY . .
RUN npm run build

FROM node:24-alpine AS runner
WORKDIR ./
ENV NODE_ENV=production

# Small static server
RUN npm install -g serve

# Copy built assets
COPY --from=builder ./dist ./dist

EXPOSE 5173
CMD ["serve", "-s", "dist", "-l", "5173"]