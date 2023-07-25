#!/bin/bash

# Create the directories
mkdir -p JohnRipperCTF
mkdir -p HashcatCTF

# Create the John the Ripper CTF files
echo "098f6bcd4621d373cade4e832627b4f6" > JohnRipperCTF/hash.txt

# Create the Hashcat CTF files
echo "7f26bf5d3bdb2f7684a7a4f3e21b5cde1d8403c0d1c09c1e16c477ec942c918a" > HashcatCTF/hash.txt
echo -e "hash\ncat\ncapture\nflag" > HashcatCTF/words.txt

# Generate two digit numbers from 00 to 29
for i in {0..29}; do printf "%02d\n" $i >> HashcatCTF/numbers.txt; done

echo "CTF challenges have been created!"

# Remove the script itself
rm -- "$0"
