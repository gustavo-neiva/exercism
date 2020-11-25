def convert(number):
    raindrop = ''
    if check_if_is_factor(number, 3):
        raindrop += 'Pling'
    if check_if_is_factor(number, 5):
        raindrop += 'Plang'
    if check_if_is_factor(number, 7):
        raindrop += 'Plong'
    if not raindrop:
        return str(number)
    return raindrop


def check_if_is_factor(number, factor):
    return number % factor == 0