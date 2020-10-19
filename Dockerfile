FROM node

# Create app directory
WORKDIR /app/

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
RUN pwd;ls; 
RUN chown -Rh $user:$user /app
RUN yarn && yarn run seed

EXPOSE 1337
CMD [ "yarn", "develop" ]