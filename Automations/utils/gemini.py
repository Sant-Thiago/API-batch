import pathlib
import textwrap

import google.generativeai as genai

GOOGLE_API_KEY = ""
genai.configure(api_key = GOOGLE_API_KEY)

def show(response):
    print(response.text)
    print('-'*42)
