# scripts
A collection of simple shell scripts that I've used

## resize_images.sh

An OSX script to recursively resize images within a folder while retaining the modified date of the image. The script uses sips to resize.
At the moment the script resizes each image 640px but that could be parameterized.

Usage:
`
resize_images.sh <folder_name>
`