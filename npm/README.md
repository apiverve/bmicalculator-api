# BMI Calculator API

BMI Calculator computes Body Mass Index along with ideal weight ranges, BMR (Basal Metabolic Rate), TDEE (Total Daily Energy Expenditure), calorie targets, and macronutrient recommendations for fitness and health applications.

[![npm version](https://img.shields.io/npm/v/@apiverve/bmicalculator.svg)](https://www.npmjs.com/package/@apiverve/bmicalculator)

This is a JavaScript wrapper for the [BMI Calculator API](https://apiverve.com/marketplace/bmicalculator?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/bmicalculator
```

Using yarn:
```shell
yarn add @apiverve/bmicalculator
```

---

## Configuration

Before using the BMI Calculator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The BMI Calculator API documentation is found here: [https://docs.apiverve.com/ref/bmicalculator](https://docs.apiverve.com/ref/bmicalculator?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const bmicalculatorAPI = require('@apiverve/bmicalculator');
const api = new bmicalculatorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  weight: 180,
  height: 70,
  unit: "imperial",
  age: 30,
  gender: "male",
  activityLevel: "moderate"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  weight: 180,
  height: 70,
  unit: "imperial",
  age: 30,
  gender: "male",
  activityLevel: "moderate"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  weight: 180,
  height: 70,
  unit: "imperial",
  age: 30,
  gender: "male",
  activityLevel: "moderate"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "height": "70 inches",
    "weight": "180 lbs",
    "bmi": 25.83,
    "bmiPrime": 1.033,
    "category": "Overweight",
    "risk": "Increased risk",
    "summary": "BMI is above the healthy range. Lifestyle changes may be beneficial.",
    "idealWeightRange": {
      "min": 129,
      "max": 173.5,
      "unit": "lbs"
    },
    "weightToChange": {
      "direction": "lose",
      "amount": 6.5,
      "unit": "lbs"
    },
    "bmr": 1783,
    "tdee": 2763,
    "calorieTargets": {
      "extremeDeficit": 1763,
      "moderateDeficit": 2263,
      "maintain": 2763,
      "moderateSurplus": 3063,
      "bulkSurplus": 3263
    },
    "macros": {
      "lose": {
        "protein": 198,
        "carbs": 198,
        "fat": 75
      },
      "maintain": {
        "protein": 207,
        "carbs": 276,
        "fat": 92
      },
      "gain": {
        "protein": 230,
        "carbs": 345,
        "fat": 85
      }
    }
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
