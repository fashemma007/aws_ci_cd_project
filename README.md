##Script to Create the Initial Inventory File
echo "[all]" > inventory

##Script to Query EC2 for Instances and Output to File
aws ec2 describe-instances \
   --query 'Reservations[*].Instances[*].PublicIpAddress' \
   --output text >> inventory