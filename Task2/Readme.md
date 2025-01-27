Day 2 Challenge: Advanced S3 Bucket Metadata Manipulation
Hello Learners,

Welcome back to the DevOps SRE Daily Challenge! 🎉 Today, you’ll dive into cloud storage optimization and scripting, focusing on managing S3 bucket metadata and identifying cost-saving opportunities.

Using a provided JSON file (buckets.json), create a Python script to analyze, modify, and optimize S3 bucket metadata.

Requirements:

Using the provided JSON file, implement the following:

Print a summary of each bucket: Name, region, size (in GB), and versioning status

Identify buckets larger than 80 GB from every region which are unused for 90+ days.

Generate a cost report: total s3 buckets cost grouped by region and department.

Highlight buckets with:

Size > 50 GB: Recommend cleanup operations.
Size > 100 GB and not accessed in 20+ days: Add these to a deletion queue.
4. Provide a final list of buckets to delete (from the deletion queue). For archival candidates, suggest moving to Glacier.

Why This Matters:

Cost efficiency is a cornerstone of cloud-native practices.
Today’s challenge will teach you how to analyze and optimize cloud resources, automate cleanup, and reduce costs—all essential for modern DevOps roles.

Submission Guidelines:

GitHub Repository: Upload your script and buckets.json.
Documentation: Include a README.md We would like you to explain your approach, challenges faced, and key learnings.
Share Your Progress: Post your experience with hashtags: #getfitwithsagar, #SRELife, #DevOpsForAll.
Take Action and Save Costs! Every script you write today brings you closer to mastering cost optimization in DevOps.




Good luck!
Best regards,
Sagar Utekar
