"""
BMI Calculator API - Basic Usage Example

This example demonstrates the basic usage of the BMI Calculator API.
API Documentation: https://docs.apiverve.com/ref/bmicalculator
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/bmicalculator'

def call_bmicalculator_api():
    """
    Make a GET request to the BMI Calculator API
    """
    try:
        # Query parameters
        params &#x3D; {&#x27;weight&#x27;: 180, &#x27;height&#x27;: 70, &#x27;unit&#x27;: &#x27;imperial&#x27;, &#x27;age&#x27;: 30, &#x27;gender&#x27;: &#x27;male&#x27;, &#x27;activityLevel&#x27;: &#x27;moderate&#x27;}

        headers = {
            'x-api-key': API_KEY
        }

        response = requests.get(API_URL, headers=headers, params=params)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling BMI Calculator API...\n')

    result = call_bmicalculator_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')
