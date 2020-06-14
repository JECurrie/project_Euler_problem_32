array = [1, 2, 3]

array.each { |n| print n * 2 }
puts
# [1, 2, 3]
print array
array.map { |n| print n * 2 } #map == collect
# [2, 4, 6]
print array