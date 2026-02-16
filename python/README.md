BMI Calculator API
============

BMI Calculator is a simple tool for calculating body mass index. It returns the calculated BMI based on the weight and height provided.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [BMI Calculator API](https://apiverve.com/marketplace/bmicalculator?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-bmicalculator
```

Using `pip3`:

```bash
pip3 install apiverve-bmicalculator
```

---

## Configuration

Before using the bmicalculator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_bmicalculator.apiClient import BmicalculatorAPIClient

# Initialize the client with your APIVerve API key
api = BmicalculatorAPIClient("[YOUR_API_KEY]")

query = {
    "weight": 70,
    "height": 170,
    "unit": "metric"
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The BMI Calculator API documentation is found here: [https://docs.apiverve.com/ref/bmicalculator](https://docs.apiverve.com/ref/bmicalculator?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_bmicalculator.apiClient import BmicalculatorAPIClient

# Initialize the client with your APIVerve API key
api = BmicalculatorAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "weight": 70,
    "height": 170,
    "unit": "metric"
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "height": "170 cm",
    "weight": "70 kg",
    "bmi": 24.221453287197235,
    "risk": "Low risk",
    "summary": "This weight is normal and you are healthy.",
    "recommendation": "A BMI between 18.5 and 24.9 falls within the 'normal' weight range according to the World Health Organization. This range is associated with the lowest health risk for conditions such as heart disease, diabetes, and certain cancers. However, it's important to note that BMI is not a perfect measure as it does not account for muscle mass, bone density, overall body composition, and racial and sex differences. Therefore, while it's a useful starting point, it should not be the only measure of one's health."
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `BmicalculatorAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_bmicalculator.apiClient import BmicalculatorAPIClient, BmicalculatorAPIClientError

api = BmicalculatorAPIClient("[YOUR_API_KEY]")

query = {
    "weight": 70,
    "height": 170,
    "unit": "metric"
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except BmicalculatorAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_bmicalculator.apiClient import BmicalculatorAPIClient, BmicalculatorAPIClientError

api = BmicalculatorAPIClient("[YOUR_API_KEY]")

query = {
    "weight": 70,
    "height": 170,
    "unit": "metric"
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except BmicalculatorAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_bmicalculator.apiClient import BmicalculatorAPIClient, BmicalculatorAPIClientError

query = {
    "weight": 70,
    "height": 170,
    "unit": "metric"
}

# Using context manager ensures proper cleanup
with BmicalculatorAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except BmicalculatorAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_bmicalculator.apiClient import BmicalculatorAPIClient

# Enable debug mode
api = BmicalculatorAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "weight": 70,
    "height": 170,
    "unit": "metric"
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_bmicalculator.apiClient import BmicalculatorAPIClient

api = BmicalculatorAPIClient("[YOUR_API_KEY]")

query = {
    "weight": 70,
    "height": 170,
    "unit": "metric"
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
