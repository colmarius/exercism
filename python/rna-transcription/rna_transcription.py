rna_map = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U',
    'U': ''
}


def to_rna(sequence):
    try:
        mapped_chars = map(lambda char: rna_map[char], sequence)
        return ''.join(mapped_chars)
    except KeyError:
        return ''
