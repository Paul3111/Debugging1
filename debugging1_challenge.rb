# The code that contains the error is:

=begin
def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[0][0]
end
=end

# The corrected code is:

def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  c = counter.to_a.select { |key, value| value if key =~ /[a-z]/ }
  return c.max_by { |a, b| b }[0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

puts get_most_common_letter("the rbbbbf  the rbbbbbbbf is on fire!")