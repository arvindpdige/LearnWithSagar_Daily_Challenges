import json
with open('bucket.json', 'r') as file:
    data = json.load(file)

// print(data)

inner_list=(data['buckets'])
print("===1. Summary of each Bucket===")

for item in inner_list:
	print(f"Name: {item['name']}, Region: {item['region']}, Versioning: {item['versioning']}, SizeGB: {item['sizeGB']}")

print("===2. Buckets larger than 80 GB from every region===")
for item in inner_list:
    if item['sizeGB'] >= 80:
        print(f"Bucket with Name: {item['name']} in Region: {item['region']} has size: {item['sizeGB']} ")

print("===3. Buckets larger than 80 GB from every region===")


