def is_isogram(string):
    letters = normalized_letters(string)
    return same_length(set(letters), letters)


def same_length(first, second):
    return len(first) == len(second)


def normalized_letters(string):
    normalized = string.lower().strip().replace(' ', '').replace('-', '')
    return list(normalized)
