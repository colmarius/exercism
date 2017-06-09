import re


def is_pangram(phrase):
    normalized = re.sub(r'(\W|\d|_)', '', phrase.lower())
    return len(set(list(normalized))) == 26
