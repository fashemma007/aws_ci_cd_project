## Script to Create the Initial Inventory File <br>
# echo "[all]" > inventory

## Script to Query EC2 for Instances and Output to File <br>
#### """aws ec2 describe-instances --query 'Reservations[*].Instances[*].PublicIpAddress'  --filters "Name=tag:Name,Values=ansible-instance" --output text >> inventory"""