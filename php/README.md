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
    "height": "170 cm",
    "weight": "70 kg",
    "bmi": 24.221453287197235,
    "risk": "Low risk",
    "summary": "This weight is normal and you are healthy.",
    "recommendation": "A BMI between 18.5 and 24.9 falls within the 'normal' weight range according to the World Health Organization. This range is associated with the lowest health risk for conditions such as heart disease, diabetes, and certain cancers. However, it's important to note that BMI is not a perfect measure as it does not account for muscle mass, bone density, overall body composition, and racial and sex differences. Therefore, while it's a useful starting point, it should not be the only measure of one's health."
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bmicalculator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/bmicalculator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/bmicalculator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
