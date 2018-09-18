def hey(phrase):
    phrase = phrase.strip()
    if not phrase:
        return "Fine. Be that way!"
    elif phrase.endswith("?") and phrase.isupper():
        return "Calm down, I know what I'm doing!"
    elif phrase.endswith("?") and not phrase.isupper():
        return "Sure."    
    elif phrase.isupper():
        return "Whoa, chill out!"
    else:
        return "Whatever."