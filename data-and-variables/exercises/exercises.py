# 1. Declare and assign the variables here:
shuttle_name = 'determination'
shuttle_speed = 17500
distance_mars = 225000000
distance_moon = 384400
miles_per_km = 0.621

# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(shuttle_name))
print(type(shuttle_speed))
print(type(distance_mars))
print(type(distance_moon))
print(type(miles_per_km))

# Code your solution to exercises 3 and 4 here:
miles_to_mars = distance_mars * miles_per_km
hours_to_mars = distance_mars / shuttle_speed
days_to_mars = hours_to_mars / 24

print(shuttle_name + " will take " + str(days_to_mars) + " days to reach to Mars ")

# Code your solution to exercise 5 here
miles_to_the_moon = distance_moon * miles_per_km
hours_to_the_moon = distance_moon / shuttle_speed
days_to_the_moon = hours_to_the_moon / 24 

print(shuttle_name + " will take " + str(days_to_the_moon) + " days to reach the Moon " )