FROM node:24-alpine
WORKDIR src/

# Install build dependencies
COPY src/package*.json ./

RUN npm ci

# Copy source and build
COPY . .

EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]