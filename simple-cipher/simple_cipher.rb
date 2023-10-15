
class Cipher
    ALPHABET = ('a'..'z').to_a
    A_ORD = 'a'.ord

    def initialize(key = nil)
        if key != nil && (key.length == 0 || /[^a-z]/.match(key))
            raise ArgumentError.new("Key must be lowercase letters")
        end

        @key = key || 100.times.map { ALPHABET.sample }.join
    end

    def key
        @key
    end

    def encode(plaintext)
        plaintext.chars.zip(@key.chars).map do |c, k|
            ALPHABET[(ord(c) + ord(k)) % ALPHABET.length]
        end.join
    end

    def decode(cipher)
        cipher.chars.zip(@key.chars).map do |c, k|
            ALPHABET[(ord(c) - ord(k)) % ALPHABET.length]
        end.join
    end

    def ord(char)
        char.ord - A_ORD
    end

end
