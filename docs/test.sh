# Get the list of tags
# tags=$(git tag)

# Split the list of tags into an array
# tag_array=($tags)

read -a tags <<< `git tag`


# Call the Python script and pass the list of tags as arguments
python main.py "${tags[@]}"
