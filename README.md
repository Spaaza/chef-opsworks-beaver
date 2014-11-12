# opsworks-beaver

TODO: Enter the cookbook description here.

## SNS Queue ##

Create a new queue in the AWS SQS (Simple Queue Service) console - "logstash-input". Make a note of it's ARN so that you can reference it in the IAM policy described below.

## IAM Setup ##

Create logstash-writer the policy below: Generate an Access Key and make a note of it, for clients.

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1389301427000",
      "Effect": "Allow",
      "Action": [
        "sqs:SendMessage",
        "sqs:GetQueueAttributes",
        "sqs:GetQueueUrl",
        "sqs:ListQueues"
      ],
      "Resource": [
        "{ARN of your queue, eg. arn:aws:sqs:us-east-1:000000000:logstash}"
      ]
    }
  ]
}

## Logstash Writer Layer ##

Create an Opsworks Layer called Logstash Writer (logstash-writer). This layer will have the beaver recipe assigned to it (setup/configure?).

Assign the above "logstash-writer" policy as the layer's EC2 instance profile (under the security tab). This ensures that the instances in this layer can write to the SQS queue.

Note that instances can belong to more than one layer.