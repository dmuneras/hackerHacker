def insertionSort(ar)
  pivot = ar.last
  last = ar.size * -1
  index = -2
  while (index >= last)
    previous_ar = ar.clone;
    if ar[index] < pivot
      ar[index+1] = pivot
      pivot = ar[index]
    elsif index == last && pivot < ar[index]
      ar[index+1] = ar[index]
      puts ar.join(' ')
      ar[index] = pivot
      puts ar.join(' ')
      break;
    else
      ar[index+1] = ar[index]
    end
    puts ar.join(' ') if previous_ar != ar
    index -= 1
  end
end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )





