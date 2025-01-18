#!/usr/bin/python3

import sys
import pandas as pd
import matplotlib.pyplot as plt

if len(sys.argv) <= 1:
    print('Usage: plot_bars <output_name>')
    sys.exit(1)
output_name = str(sys.argv[1])

df = pd.read_csv(sys.stdin, sep=' ', header=None)
df.columns = ['year', 'count']

ax = df.plot.bar(x='year', y='count', rot=80)
fig = ax.get_figure()
fig.savefig(output_name + '.png')
