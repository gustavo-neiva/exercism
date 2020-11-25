import string

ALPHABET = list(string.ascii_lowercase)

def is_pangram(sentence):
    lower_case = sentence.lower()
    pangram = all(letter in lower_case for letter in ALPHABET)
    return pangram
