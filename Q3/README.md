Instructions
=============
1. Create a Webhook to publish SNS messages to Slack 
      We use Lambda, because many common webhooks expect json key value pairs that SNS doesn't support.
      Create an SNS topic using SNS service.
      Create an incoming webhook to the Slack channel used for alerting support team and get the webhook link.
      Create a Lanbda function by using lambda_function.py provide webhook link and channel name in the function.
      Test the Lambda function by creating anew test event with sns-notification event template as below.
      
      ![image](https://user-images.githubusercontent.com/67718999/103903312-b3b50180-5136-11eb-9282-2b723f94daba.png)
      
2. Create SNS subscription 
    Add a trigger at Lambda function and attach the SNS topic which is created before as shown below.
