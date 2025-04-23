import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

data = pd.read_csv('startup_data.csv')

startup = data.rename(columns = {'FundingAmount)':'FundingAmount'})