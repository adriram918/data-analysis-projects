my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.
print(len(my_string))
new_string = my_string[3:10] + "lau"
print(new_string)

# Use a template literal to print the original and modified string in a descriptive phrase.
phrase_1 = "The old word was"
phrase_2 = "and the new word is"
print(phrase_1 + " " + my_string + " " + phrase_2  + " " + new_string)

# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.
num_letters = int(input("Enter the number of letter to relocate: "))
new_string2 = my_string[num_letters:] + my_string[:num_letters]
print("Original string:", my_string)
print("Modified string:", new_string2)

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.


while True:
    try:
        user_input = input("Enter the number of letters to relocate (default = 3): ")

        if user_input.strip() == "":
            num_letters = 3
        else:
            num_letters = int(user_input)

        if 0 <= num_letters <= len(my_string):
            break
        else:
            print(f"Please enter a number between 0 and {len(my_string)}.")
            num_letters = 3

    except ValueError:
        print("That wasn't a valid number. Using default = 3.")
        num_letters = 3

new_string = my_string[num_letters:] + my_string[:num_letters]

print("Original string:", my_string)
print("Modified string:", new_string)