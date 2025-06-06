FROM node:24-bullseye

# Install git to clone the repo
RUN apt-get update && apt-get install -y git chromium 

# Clone the repo
RUN git clone https://github.com/hubbl-ai/svgtopng /app

# Set working directory
WORKDIR /app

# Install dependencies
RUN npm install
RUN rm -rf node_modules/cheerio
RUN rm -rf package-lock.json
RUN npm install --save cheerio@1.0.0-rc.11

# Expose app port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]