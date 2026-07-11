import streamlit as st
import pandas as pd

# Set page title
st.title("Data Extraction Dashboard")

# Load your data
@st.cache_data
def load_data():
    df = pd.read_csv('cleaned_data.csv')
    return df

data = load_data()

# Show the data
st.write("Here is the data from your pipeline:")
st.dataframe(data)

# Show a simple chart
st.write("Housing Median Age Distribution:")
st.bar_chart(data['housing_median_age'])
