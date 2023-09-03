# Pass Gen

## Introduction

Pass Gen is a simple password generation script written in Bash. It allows users to generate passwords with various character sets and lengths based on their preferences.

## Table of Contents

- [About](#about)
- [Features](#Features)
- [Usage](#usage)
- [Options](#options)
- [Examples](#examples)
- [Author](#author)
- [License](#license)

## About

`passgen.sh` is a Bash script that allows you to generate random passwords with specific criteria. It provides flexibility in choosing the password length and character sets, making it useful for various security requirements.

## Features

- Generate secure passwords with customizable options.
- Specify password length.
- Choose character sets including lowercase letters, uppercase letters, digits, and special characters.
- Create custom character patterns for password generation.

## Usage

To use `passgen.sh`, simply run it in your terminal:

```console
user@example:~git clone https://github.com/AbhishekNair1289/Pass-Gen.git
user@example:~cd Pass-Gen
user@example:~chmod +x passgen.sh 
user@example:~./passgen.sh
```

![image](https://github.com/AbhishekNair1289/Pass-Gen/assets/74359627/b732f5d7-55ef-49e0-86d3-1d39c2682c97)

## Options
You can customize password generation using the following options:

-l, --length LENGTH: Specify the desired password length (default is 10).
-v, --valid VALID: Define the pattern for valid characters. You can choose from the following predefined options:
- [:alnum:] for alphanumeric characters (letters and digits).
- [:alpha:]-_ for alphabetical characters (letters), hyphens, and underscores.
- [:lower:] for lowercase letters only.
- [:upper:] for uppercase letters only.
- [:digit:] for numbers only.
- [:punct:] for special characters only.
- [:alnum:][:punct:] for a mix of lowercase, uppercase, digits, and special characters (default).

  
![image](https://github.com/AbhishekNair1289/Pass-Gen/assets/74359627/d03b4528-ee45-4640-b0d4-1854207c0ed2)

## Examples

Generate a 12-character password with lowercase letters and digits:

`./passgen.sh -l 12 -v '[:lower:][:digit:]'`

Generate a password with uppercase letters and special characters:

`./passgen.sh -v '[:upper:][:punct:]'`

## Author
Abhishek A Nair - [https://github.com/AbhishekNair1289]

## License
This project is open-source and available under the MIT License.

