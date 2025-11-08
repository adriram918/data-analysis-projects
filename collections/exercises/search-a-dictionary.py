flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}

## Set a variable called choice to the flavor you want to search for.
choice = 'chocolate'

## Use an if statement to check if choice is in the flavors dictionary.
if choice in flavors:
    print("chocolate is one of the flavors")    

## If it is, set another variable called cost to the value associated with choice.
cost = flavors["chocolate"]
print(cost)

## If it isn’t, set cost to 0.
if choice not in flavors:
    cost = 0 
print(cost)

## Print the cost.
print("The cost of", choice, "is", cost)

### Search a Dictionary Part 2:

## Initialize two variables: highest_cost to 0 and fanciest to an empty string.
highest_cost = 0
fanciest = ''

## Loop through the flavors dictionary using a for loop.
for key in flavors:
    print(key)

## For each flavor, check if its price is higher than highest_cost.
if flavors['chocolate'] > highest_cost:
    print('Yes')

if flavors['vanilla'] > highest_cost:
    print('Yes')

if flavors['cookies and cream'] > highest_cost:
    print('Yes')

if flavors['mint chocolate chip'] > highest_cost:
    print('Yes')

if flavors['fudge chunk'] > highest_cost:
    print('Yes')

if flavors['saffron'] > highest_cost:
    print('Yes')

if flavors['garlic'] > highest_cost:
    print('Yes')

## If it is, update fanciest to this flavor and highest_cost to its price.
fanciest = 'cookies and cream'
highest_cost = flavors['cookies and cream']

## After the loop, print the most expensive flavor.
print("The fanciest flavor is", fanciest, "and its cost", highest_cost)