import boto3

# Set the region (Must match my AWS region)
region = 'us-east-2'  

# Initialize the S3 client with the correct region
s3 = boto3.client('s3', region_name=region)

# Set a globally unique bucket name
bucket_name = 'mytt-boto3-s3-bucket' 

# Create the bucket with LocationConstraint
response = s3.create_bucket(
    Bucket=bucket_name,
    CreateBucketConfiguration={'LocationConstraint': region}  # REQUIRED for non-us-east-1 regions
)

print(f'Bucket {bucket_name} created successfully in {region}!')
