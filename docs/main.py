import sys
from jinja2 import Environment, FileSystemLoader

# Get the list of tags from the command line arguments
tags = sys.argv[1:-1]
community = sys.argv[-1]
print('here is the community : ', community)
print(tags)

# Set the template directory and load the HTML template
env = Environment(loader=FileSystemLoader('templates'))
template = env.get_template('sidebar.html')

# Render the HTML template and pass the list as a variable
output = template.render(my_list=tags, community=community)

# Write the rendered HTML to a file
with open('templates/sidebar.html', 'w') as f:
    f.write(output)