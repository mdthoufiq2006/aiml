




import numpy as np

# Sample data
data = np.array([1, 2, 3, 10, 11, 12])

# Initialize parameters
mean1, mean2 = 2, 11
w1, w2 = 0.5, 0.5

def gaussian(x, mean):
    return np.exp(-(x - mean)**2 / 2)

# EM Algorithm
for i in range(5):  # iterations
    # E-step
    r1 = w1 * gaussian(data, mean1)
    r2 = w2 * gaussian(data, mean2)
    total = r1 + r2
    r1 /= total
    r2 /= total

    # M-step
    mean1 = np.sum(r1 * data) / np.sum(r1)
    mean2 = np.sum(r2 * data) / np.sum(r2)
    w1 = np.mean(r1)
    w2 = np.mean(r2)

# Output
print("Mean1:", round(mean1, 2))
print("Mean2:", round(mean2, 2))
print("Weight1:", round(w1, 2))
print("Weight2:", round(w2, 2))
