meds = ['Advil', 'Tylenol', 'Herbs']

note = """This patient takes one Tylenol daily."""

def meds_match(meds, note):
    criteria = [med for med in meds if med in note]
    if criteria:
        return True, criteria
    else:
        return False, criteria

medication = meds_match(meds, note)
medication
