FROM node:20
WORKDIR /app

# # # Copy only package.json and yarn.lock first for better caching
COPY package.json ./

# # # Install dependencies
# RUN npm install yarn
RUN yarn install --frozen-lockfile
copy . .