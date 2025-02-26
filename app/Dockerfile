# Use an official AWS Lambda Node.js runtime as the base image
FROM public.ecr.aws/lambda/nodejs:14

# Set your working directory inside the container
WORKDIR /var/task

# Copy your source code into the container
COPY . .

# Copy the application code into the container
#COPY index.js ${LAMBDA_TASK_ROOT}

# Install dependencies (if any)
RUN npm install

# Set the Lambda handler
CMD ["index.handler"]
