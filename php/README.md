# BMI Calculator API - PHP Package

BMI Calculator computes Body Mass Index along with ideal weight ranges, BMR (Basal Metabolic Rate), TDEE (Total Daily Energy Expenditure), calorie targets, and macronutrient recommendations for fitness and health applications.

## Installation

Install via Composer:

```bash
composer require apiverve/bmicalculator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Bmicalculator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'weight' => 180,
    'height' => 70,
    'unit' => 'imperial',
    'age' => 30,
    'gender' => 'male',
    'activityLevel' => 'moderate'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Bmicalculator\Client;
use APIVerve\Bmicalculator\Exceptions\APIException;
use APIVerve\Bmicalculator\Exceptions\ValidationException;

try {
    $response = $client->execute(['weight' => 180, 'height' => 70, 'unit' => 'imperial', 'age' => 30, 'gender' => 'male', 'activityLevel' => 'moderate']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bmicalculator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/bmicalculator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/bmicalculator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
