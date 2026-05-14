# EM Algorithm Simple Example

# Sample probabilities
prob_A = 0.6
prob_B = 0.5

print("Initial Probability A =", prob_A)
print("Initial Probability B =", prob_B)

# E-Step
expected_A = (prob_A + prob_B) / 2

# M-Step
prob_A = expected_A
prob_B = 1 - expected_A

print("\nAfter EM Iteration")
print("Updated Probability A =", round(prob_A, 2))
print("Updated Probability B =", round(prob_B, 2))
