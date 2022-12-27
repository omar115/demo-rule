# Get the list of tags
tags=$(git tag)

echo "${tags}"
# Split the list of tags into an array
tag_array=($tags)

# Call the Python script and pass the list of tags as arguments
python main.py "${tag_array[@]}"
