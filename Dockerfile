# -------------------------------
# Stage 1: Base Image
# -------------------------------
FROM node:20-alpine AS base
WORKDIR /app

# -------------------------------
# Stage 2: Install Dependencies
# -------------------------------
FROM base AS deps

WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package.json package-lock.json* ./

# Install dependencies using npm
RUN npm install

RUN sed -i 's/"3.\*"/"*"/g' /app/node_modules/gitbook-plugin-page-toc/package.json

# -------------------------------
# Stage 3: Build the HonKit Book
# -------------------------------
FROM base AS builder
WORKDIR /app

COPY . .

# Copy installed dependencies from the deps stage
COPY --from=deps /app/node_modules ./node_modules

# Build the static site; HonKit outputs the book into the _book folder by default
RUN npx honkit build

# -------------------------------
# Stage 4: Serve the Built Book Using "serve"
# -------------------------------
FROM node:20-alpine AS runner
WORKDIR /app

# Install the serve package globally
RUN npm install -g serve

RUN ls -lath /app

# Copy the built static site from the builder stage
COPY --from=builder /app/_book ./_book

# Expose port 80 so that the container listens for HTTP traffic
EXPOSE 5000

# Serve the _book folder on port 80, binding to all interfaces using tcp:// protocol
CMD ["serve", "_book", "-l", "tcp://0.0.0.0:5000"]

