import numpy as np


# function to return sigmoid value
def sigmoid(x):
    return 1 / (1 + np.exp(-x))
