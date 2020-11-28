import random
import string
import pdb
class Robot:

    def __init__(self):
        self.names = []
        self.name = self._generate_name()

    def _generate_strings(self):
        letters = ""
        chars = string.ascii_uppercase
        for _ in range(2):
            letters += random.choice(chars)
        return letters

    def _generate_numbers(self):
        numbers = ""
        for _ in range(3):
            numbers += str(random.randrange(10))
        return numbers


    def _generate_name(self):
        name = self._generate_strings() + self._generate_numbers()
        self.names.append(name)
        return name

    def reset(self):
        new_name = False
        while not new_name:
            name = self._generate_name()
            if name in self.names:
                name = self._generate_name()
                self.name = name
                new_name = True