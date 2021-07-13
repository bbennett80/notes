import pandas as pd
from datetime import datetime

d1_parser = lambda x: datetime.strptime(x, '%m/%d/%Y %I:%M %p')
df1 = pd.read_csv('t.csv', parse_dates=['date'], date_parser=d1_parser)

d2_parser = lambda x: datetime.strptime(x, '%m/%d/%Y %H:%M %p')
df2 = pd.read_csv('x.csv', parse_dates=['date'], date_parser=d2_parser)

match = pd.concat([df1, df2])
match = match.reset_index(drop=True)
match.style.hide_index()

match['date'].min()

match['date'].max()

match['date'].max() - match['date'].min()

match['day'] = match.date.dt.date
match

match.set_index('date')
