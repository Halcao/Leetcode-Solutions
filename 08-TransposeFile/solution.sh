# Read from the file file.txt and print its transposed content to stdout.
#!/bin/zsh

cat ./file.txt | awk '{for(i=1;i<=NF;i++)a[i]=a[i]?a[i]" "$i:$i}END{for(i=1;i<=NF;i++)print a[i]}'
