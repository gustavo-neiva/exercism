def two_fer(name = None):
    if not name:
        name = "you"
    message = f'One for {name}, one for me.'
    return message
