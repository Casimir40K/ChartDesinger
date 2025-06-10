import pandas as pd

# Example of loading your current data
df = pd.read_excel('workoutchart.xlsx', sheet_name='proper')  # or pd.read_csv('your_workout_log.csv')

# Prepare a list to hold normalized rows
normalized_rows = []

for idx, row in df.iterrows():
    weights = str(row['Weight']).split('-')
    ideal_reps = row['Ideal reps']
    actual_reps = row['Actual Reps']
    failure = row['Failure']
    date = row['Date']
    exercise = row['Exercise']
    num_sets = int(row['Set'])
    
    # If "weights" is shorter than "Set", pad to avoid index error
    while len(weights) < num_sets:
        weights.append('')

    for set_num in range(num_sets):
        normalized_rows.append({
            'Date': date,
            'Exercise': exercise,
            'Set #': set_num + 1,
            'Weight': weights[set_num].strip(),
            'Ideal Reps': ideal_reps,
            'Actual Reps': actual_reps,
            'Failure': failure
        })

# Create a new DataFrame in the recommended format
normalized_df = pd.DataFrame(normalized_rows)

# Save to Excel or CSV
normalized_df.to_excel('normalized_workout_log.xlsx', index=False)
# normalized_df.to_csv('normalized_workout_log.csv', index=False)

print("Normalization complete! Check 'normalized_workout_log.xlsx'.")