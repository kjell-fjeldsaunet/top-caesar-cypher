def caesar_cypher(string, shift)
  string.split("").map { |upper_char| character_shifter(upper_char.ord, shift, 90, 64).chr}.map { |lower_char| character_shifter(lower_char.ord, shift, 122, 97).chr}.join("")
end

def character_shifter(character_code, addition, upper, lower)
  if character_code <= upper and character_code >= lower
    if character_code + addition > upper
      character_code = lower + character_code + addition - upper - 1
    elsif character_code + addition < lower
      character_code = upper - lower + character_code + addition + 1
    else 
      character_code += addition
    end
  else
    character_code
  end
end

#Tests
#puts "Handles single uppercase character: Inputs A and 1 should give B; result: #{caesar_cypher("A", 1)}"
#puts "Handles single lowercase character: Inputs a and 1 should give b; result: #{caesar_cypher("a", 1)}"
#puts "Handles negative shift: Inputs b and -1 should give a; result: #{caesar_cypher("b", -1)}"
#puts "Wraps around z to a: Inputs z and 1 should give a; result: #{caesar_cypher("z", 1)}"
#puts "Wraps around a to z: Inputs a and -1 should give z; result: #{caesar_cypher("a", -1)}"
#puts "Handles sentence with punctuation and capitalization: Inputs Test! and 2 should give Vguv!; result: #{caesar_cypher("Test!", 2)}"
#puts caesar_cypher("Idxz rjmf!", 5)