def substrings (word, substrings)
  counts = {}
  substrings.each do | substring |
    count = substring_count(word, substring)
    counts[substring] = count if count > 0
  end
  counts
end

def substring_count (word, substring)
  count = 0
  position = -1

  until position.nil? do
    # downcase both for case insensitivity
    position = word.downcase.index(substring.downcase, position + 1)
    count += 1 unless position.nil?
  end
  count
end