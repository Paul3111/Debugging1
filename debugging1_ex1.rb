# The program with the bug is:
=begin
def say_hello(name)
  return "hello #(name)"
end

# Intended output:
#
# > say_hello("kay")
# => "hello kay"
=end

def say_hello(name)
  return "hello #{name}"
end

puts say_hello("Paul")