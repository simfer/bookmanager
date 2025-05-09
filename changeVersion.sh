# Set the path to your Version.js file
file_path="./app/books/webapp/i18n/i18n.properties"

# Extract the current version using awk
current_version=$(awk -F' ' '/appTitle/ {print $2}' "$file_path")

# Increment the patch version
new_patch_version=$(echo "$current_version" | awk -F'.' '{print $1"."$2"."$3 + 1}')

# Update the Version.js file with the new version
sed -i '' "s/appTitle=Books $current_version/appTitle=Books $new_patch_version/" "$file_path"

echo "Version updated to $new_patch_version"