import streamlit as st
import pandas as pd
import numpy as np

# Title and description
st.title("📊 Simple Data Explorer")
st.write("This is a sample Streamlit app with user inputs, data table, and chart.")

# User input
num_rows = st.slider("Select number of rows", min_value=5, max_value=100, value=10)
show_chart = st.checkbox("Show Line Chart")

# Generate sample data
data = pd.DataFrame({
    'A': np.random.randn(num_rows),
    'B': np.random.randn(num_rows),
    'C': np.random.randn(num_rows)
})

# Display data
st.subheader("Generated Data")
st.dataframe(data)

# Display chart if checked
if show_chart:
    st.subheader("Line Chart")
    st.line_chart(data)

# Simple text input
name = st.text_input("What's your name?")
if name:
    st.write(f"Hello, **{name}**! 👋")
