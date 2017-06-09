rna_map = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U',
    'U': ''
}


def to_rna(sequence):
    result = []
    for char in sequence:
        if char not in rna_map:
            return ''
        else:
            result.append(rna_map[char])
    return ''.join(result)
