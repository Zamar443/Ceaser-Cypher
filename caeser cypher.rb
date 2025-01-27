def caesar_cipher(input_string, shift_factor)
  # Ensure the shift factor wraps within 26 letters
  shift_factor = shift_factor % 26
  
  # Transform each character in the string
  encrypted_string = input_string.chars.map do |char|
    if char.match(/[A-Za-z]/)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      # Apply the shift, ensuring it wraps around alphabetically
      ((char.ord - base + shift_factor) % 26 + base).chr
    else
      char # Non-alphabetic characters remain unchanged
    end
  end
  
  # Join the transformed characters back into a single string
  encrypted_string.join
end

# Example usage
puts caesar_cipher("Hello, Zamar!", 5) # Output: "Mjqqt, Efrfw!"
puts caesar_cipher("Mjqqt, Efrfw!", -5) # Output: "Hello, Zamar!"
