def is_armstrong_number(number):
    str_num = str(number)
    length = len(str_num)
    to_pow = 0
    for n in str_num:
        to_pow += int(n) ** length
    return to_pow == number
