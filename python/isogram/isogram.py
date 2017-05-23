def is_isogram(phrase):
    alpha_phrase = filter(str.isalpha, phrase.lower())
    unique_letters = set(alpha_phrase)
    return len(unique_letters) == len(alpha_phrase)
