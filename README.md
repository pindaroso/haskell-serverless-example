[![Build Status](https://travis-ci.org/stilesb/haskell-serverless-example.svg?branch=master)](https://travis-ci.org/stilesb/haskell-serverless-example)

# haskell-serverless-example

**Haskell serverless example using AWS API Gateway and Lambda**

## Setup

### Requirements

* Vagrant or Docker (Engine and Compose)
* AWS role for executing code on AWS Lambda, e.g., `arn:aws:iam::259394719635:role/lambda`
* AWS API key and secret

### Building

To setup the application, follow the below instructions.

```
$ cp vars.example.env vars.env && vim vars.env # Update variables as needed
$ ./bin/setup
```

Building the application code is also simple.

```
$ ./bin/build
```

This builds your entire project and generates a `lambda.zip` file in the current directory. Deploying an existing `lambda.zip` file to AWS is done by executing the following command:

```
$ ./bin/deploy
```

This creates function `x` that can be invoked manually (see below).

Deleting an API Gateway endpoint:

```
$ ./bin/delete
```

Note that AWS has a rate limit on API deletions.

### TODO

* Create an API Gateway endpoint and link it to the AWS Lambda function. The configuration and part of the code are ready but the process is a little bit involved.

## References

* [Inspiration](https://github.com/abailly/aws-lambda-haskell)
* [Running executables in AWS Lambda](http://aws.amazon.com/fr/blogs/compute/running-executables-in-aws-lambda/)
* [Child processes in node](https://nodejs.org/api/child_process.html)
* [AWS Lambda documentation](http://docs.aws.amazon.com/lambda/latest/dg/nodejs-create-deployment-pkg.html)
