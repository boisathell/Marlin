bedfile = open('bed.tsv')
bed = []


min = 100
for r, b in enumerate(bedfile):
    row = []
    for c, a in enumerate(b.split()):
        v = float(a)
        if min > v:
            min = v
        row.append(v)
    bed.append(row)
    
import math
glines = []
for r_rev, row in enumerate(bed):
    r = len(bed) - 1 - r_rev
    for c, val in enumerate(row):
        if (math.isnan(val)):
            glines.append(f'M421 I{c} J{r} N\n')
        else:
            glines.append(f'M421 I{c} J{r} Z{val}\n')

for l in glines:
    print(l)
