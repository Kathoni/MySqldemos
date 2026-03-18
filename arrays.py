data = [1, 2, 2, 3, 4, 4, 5]
result = list(dict.fromkeys(data))
print(result)

text = "data engineering is fun and data is powerful"

words = text.split()
freq = {}

for word in words:
    freq[word] = freq.get(word, 0) + 1

print(freq)

import pandas as pd


data = {
    "student_id": [101, 53, 128, 3],
    "name": ["Ulysses", "William", "Henry", "Diana"],
    "age": [13, 10, 6, 11]
}
students = pd.DataFrame(data)

print(students)

filtered = students.loc[students["student_id"] == 101, ["name", "age"]]
print(filtered)