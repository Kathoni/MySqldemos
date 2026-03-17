data = [1, 2, 2, 3, 4, 4, 5]
result = list(dict.fromkeys(data))
print(result)

text = "data engineering is fun and data is powerful"

words = text.split()
freq = {}

for word in words:
    freq[word] = freq.get(word, 0) + 1

print(freq)