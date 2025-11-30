proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.
for s in strings:
    if "," in s: 
        print(f"'{s} --> separated by commas")
    elif ";" in s:
        print(f"'{s} --> separated by semicolons")
    elif "" in s:
        print(f"'{s} --> separated by spaces")
    else:
        print(f"'{s} --> No known separator found")
# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.

for s in strings:
    if "," in s:
        parts = s.split(",")
        
        parts.reverse()
        
        new_string = ",".join(parts)
        
        print(f"Original: {s}")
        print(f"Reversed: {new_string}\n")
    else:
        print(f"'{s}'--> not comma-separated, skipping\n")


# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.


for s in strings:
    if ";" in s:
        parts = s.split(";")
    
        parts.sort()
        
        new_string = ",".join(parts)
        
        print(f"Original: {s}")
        print(f"Alphabetized: {new_string}\n")
    else:
        print(f"'{s}'--> not semicolon-separated, skipping\n")


# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.

for s in strings:
    if " " in s:
        parts = s.split(" ")
        
        parts = sorted(parts, reverse=True)
   
        new_string = " ".join(parts)
        
        print(f"Original: {s}")
        print(f"Reverse alphabetized: {new_string}\n")
    else:
        print(f"'{s}' --> not space-separated, skipping\n")


# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
