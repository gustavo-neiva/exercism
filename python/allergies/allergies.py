ALLERGIES = [
    'eggs',
    'peanuts',
    'shellfish',
    'strawberries',
    'tomatoes',
    'chocolate',
    'pollen',
    'cats',
]

class Allergies(object):

    def __init__(self, score):
        self.score = score
        self.list = []
        for k, name in enumerate(ALLERGIES):
            if (1 << k) & score:
                self.list.append(name)


    def is_allergic_to(self, item):
        return item in self.list

    @property
    def lst(self):
        return self.list
