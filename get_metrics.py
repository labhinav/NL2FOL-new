import numpy as np
import pandas as pd

from sklearn.metrics import accuracy_score, f1_score, precision_score, recall_score

filename='results/output_file_name.csv'

def get_results(label,preds):
    acc=accuracy_score(label,preds)
    prec=precision_score(label,preds)
    rec=recall_score(label,preds)
    f1=f1_score(label,preds)
    return acc, prec, rec, f1

if __name__=='__main__':
    df=pd.read_csv(filename)
    label=1-df['label']
    preds=1-df['result']
    preds = np.where(preds == -1, 1, preds)
    print(get_results(label,preds))
    # print(get_results(1-label,1-preds))
