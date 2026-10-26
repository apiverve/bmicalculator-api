# BMI Calculator API - Dart/Flutter Client

BMI Calculator computes Body Mass Index along with ideal weight ranges, BMR (Basal Metabolic Rate), TDEE (Total Daily Energy Expenditure), calorie targets, and macronutrient recommendations for fitness and health applications.

[![pub package](https://img.shields.io/pub/v/apiverve_bmicalculator.svg)](https://pub.dev/packages/apiverve_bmicalculator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [BMI Calculator API](https://apiverve.com/marketplace/bmicalculator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_bmicalculator: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_bmicalculator/apiverve_bmicalculator.dart';

void main() async {
  final client = BmicalculatorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'weight': 180,
      'height': 70,
      'unit': 'imperial',
      'age': 30,
      'gender': 'male',
      'activityLevel': 'moderate'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [BMI Calculator API](https://apiverve.com/marketplace/bmicalculator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/bmicalculator](https://docs.apiverve.com/ref/bmicalculator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
