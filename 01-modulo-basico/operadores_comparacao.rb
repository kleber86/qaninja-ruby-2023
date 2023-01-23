v1 = 10
v2 = 11
puts v1 > v2 # false
puts v1 < v2 # true

v1 = 12
v2 = 11
puts v1 > v2 # true
puts v1 >= v2 # true

v1 = 10
v2 = 10
puts v1 != v2 # false
puts v1 == v2 # true
puts v1.eql? v2 # true v1.eql?(v2)
