import openpyxl
import numpy as np

wb = openpyxl.load_workbook("workoutchart.xlsx")

ws1 = wb['Sheet1']
ws2 = wb['proper']

print('total number of rows: '+str(ws1.max_row)+' . And total number of collumns: '+str(ws1.max_column))

#get the size of ammount of exercises
exercises = ws1.max_row - 1

# get the number of unique days exercised
allDays = []
for i in range(2, exercises):
    if ws1.cell(row=i, column=1).value is not None:
        allDays.append(ws1.cell(row=i, column=1).value)

TotalDays = [ws2.cell(row=i,column=1).value for i in range(2, exercises)]
print('Total days exercised: ' + str(len(TotalDays)) + '.')

daysExercised = np.unique(TotalDays)
for val in daysExercised:
    print(val)
