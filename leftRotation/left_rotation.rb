#!/bin/ruby


# Rotation with auxiliar Array

n,d = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

result = Array.new(n)
i = 0
while(i < n)
  # Right rotation: (i + d) % n
  result[(i + (n-d)) % n] = a[i]
  i += 1
end

print result.join(' ')


# In place rotation

n,d = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)

def swap(array, i,j)
  temp = array[i]
  array[i] = array[j]
  array[j] = temp
end

def partial_reverse(array, a,b)
  i = a
  while i <= (a+b)/2
    swap(array,i,(a+b) - i)
    i += 1
  end
end

partial_reverse(a, 0, d-1);
partial_reverse(a, d, n-1);
partial_reverse(a, 0, n-1);

print a.join(' ')


