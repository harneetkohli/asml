# -*- coding: utf-8 -*-
"""ML_As_1.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1FQtzzEYnL3JUsj6CW6qwhqGutxe8HZan
"""

# Q1. Split this string s = "Hi there Class!" into a list. 

s = "Hi there class!"
print(s.split())

# Q2. Given the variables planet = "Earth" diameter = 12742 Use .format() to print the following string:  The diameter of Earth is 12742 kilometers.

planet = "Earth"
diameter = "12742"
print("The diameter of {} is {} kilometers".format(planet,diameter))

# Q3. Given this nested list, use indexing to grab the word "hello"  lst = [1,2,[3,4],[5,[100,200,['hello']],23,11],1,7] 

lst = [1,2,[3,4],[5,[100,200,["hello"]],23,11],1,7]
print(lst[3][1][2])

# Q4. Given this nested dictionary grab the word "hello".  d = {'k1':[1,2,3,{'tricky':['oh','man','inception',{'target':[1,2,3,'hello']}]}]} 

d = {'k1':[1,2,3,{'tricky':['oh','man','inception',{'target':[1,2,3,'hello']}]}]}
print(d['k1'][3]['tricky'][3]['target'][3])

# Q5. Create a function that grabs the email website domain from a string in the form: user@domain.com 

s = "user@domain.com"
print(s.split('@')[-1])

# Q6. Create a basic function that returns True if the word 'dog' is contained in the input string. 

def func(d):
  return 'dog' in d.lower().split()

s = "This is the dog"
func(s)

# Q7. Create a function that counts the number of times the word "dog" occurs in a string.

def func(d):
  return d.lower().count('dog')

s = "This is the dog and you might be know this dog"
func(s)

# Q8. Use lambda expressions and the filter() function to filter out words from a list that don't start with the letter 's'.  For example: seq = ['soup','dog','salad','cat','great'] 

seq = ['soup','dog','salad','cat','great']
list(filter(lambda word:word[0] != 's',seq))

# Q9. You are driving a little too fast, and a police officer stops you. Write a function to return one of 3 pos
# sible results: "No Challan", "Small Challan", or "Heavy Challan". If your speed is 60 or less, the result is 
# "No Challan". If speed is between 61 and 80 inclusive, the result is "Small Challan". If speed is 81 or mor
# e, the result is "Heavy Challan". Unless it is your birthday (encoded as a Boolean value in the parameters 
# of the function) -- on your birthday, your speed can be 5 higher in all cases. 
# caught_speeding(81,True) 
# caught_speeding(81,False)  

def caught_speeding(speed,birthday):
  if birthday:
    speeding = speed - 5
  else:
    speeding = speed
  if speeding > 80:
    return 'Heavy challan'
  elif speeding > 60:
    return 'Small Challan'
  else:
    return 'No Challan'

# caught_speeding(81,True)
# caught_speeding(81,False)

# Q10. Concatenate two lists index-wise 
# list1 = ["M", "na", "i", "She"]  
# list2 = ["y", "me", "s", "lly"] 
# Expected Outcome: ['My', 'name', 'is', 'Shelly']

l1 = ["M","na","i","She"]
l2 = ["y","me","s","liy"]
res = [i + j for i,j in zip(l1,l2)]
print(res)

# Q11. Concatenate two lists in the following order 
# list1 = ["Hello ", "take "] 
# list2 = ["Dear", "Sir"] | Expected Output: ['Hello Dear', 'Hello Sir', 'take Dear', 'take Sir'] 

l1 = ["Hello","Take"]
l2 = ["Dear", "Sir"]
l3 = [x + y for x in l1 for y in l2]

print(l3)

# Q12. Add item 7000 after 6000 in the following Python List list1 = [10, 20, [300, 400, [5000, 6000], 500], 30, 40] 

l1= [10,20,[300,400,[5000,6000],500],30,40]
l1[2][2].append(7000)
print(l1)

# Q13. Given a Python list, remove all occurrence of 20 from the list list1 = [5, 20, 15, 20, 25, 50, 20] 

lst = [15,20,15,20,15,50,20]
def removeElement(ele):
  for i in lst:
    if i == ele:
      lst.remove(i)

removeElement(15)
print(lst)

# Q14. Check if a value 200 exists in a dictionary d1 = {'a': 100, 'b': 200, 'c': 300}

dict = {'a':100,'b':200,'c':300}
val = 200
if val in dict.values():
  print(f"This value-> {val} exist in a dictionary")
else:
  print(f"This value-> {val} does not exist in a dictionary")

# Q15. Find the sum of the series 2 +22 + 222 + 2222 + .. n terms

import math
def sumOfSeries( n ):
	return 0.0246 * (math.pow(10, n) - 1 - (9 * n))
	
n = 3
print( sumOfSeries(n))