#Utworz nowy bucket:
aws s3 mb s3://lutencjusz-sam
sam package \
   --template-file template.yaml \
   --output-template-file serverless-output.yaml \
   --s3-bucket lutencjusz-sam

sam package \
   --template-file template2.yaml \
   --output-template-file serverless-output2.yaml \
   --s3-bucket lutencjusz-sam
   
sam deploy \
   --template-file serverless-output.yaml \
   --capabilities CAPABILITY_IAM \
   --stack-name PROGNOZA \
   --parameter-overrides $(cat secret.env) \
   --region us-east-1 \
   --s3-bucket lutencjusz-sam

sam deploy \
   --template-file serverless-output2.yaml \
   --capabilities CAPABILITY_IAM \
   --stack-name PROGNOZA2 \
   --parameter-overrides $(cat secret.env) \
   --region us-east-1 \
   --s3-bucket lutencjusz-sam

mysql -h db-test.c7wfgxtezpex.us-east-1.rds.amazonaws.com -u admin -p < create_database.sql
mysql -h db-test.c7wfgxtezpex.us-east-1.rds.amazonaws.com -u admin -p DBPrognozaPodlewania < create_db.sql 
