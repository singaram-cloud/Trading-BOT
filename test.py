import streamlit as st

st.title("🔐 Testing Secrets Access")
st.write("Client Email from Secrets:")
st.code(st.secrets["gcp_service_account"]["client_email"])
