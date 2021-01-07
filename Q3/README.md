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
    
    ![image](https://user-images.githubusercontent.com/67718999/103904315-1529a000-5138-11eb-98ec-65989a53cc01.png)

3. Create a Cloudwatch alarm from monitoring tab at instance level with required metrics as below

  ![image](https://user-images.githubusercontent.com/67718999/103905074-1c04e280-5139-11eb-8aea-092c21af5461.png)
  
  create alarams for RAM usage, disk space usage as same above with our required threshold values. When ever cloudwatch meets those threshold values, it will fire     the alarms and a notification will be sent to Slack channel we mentioned in the Lambda function.
