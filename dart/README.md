# BMI Calculator API - Dart/Flutter Client

BMI Calculator is a simple tool for calculating body mass index. It returns the calculated BMI based on the weight and height provided.

[![pub package](https://img.shields.io/pub/v/apiverve_bmicalculator.svg)](https://pub.dev/packages/apiverve_bmicalculator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [BMI Calculator API](https://apiverve.com/marketplace/bmicalculator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_bmicalculator: ^1.1.14
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
      'weight': 70,
      'height': 170,
      'unit': 'metric'
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
    "height": "170 cm",
    "weight": "70 kg",
    "bmi": 24.221453287197235,
    "risk": "Low risk",
    "summary": "This weight is normal and you are healthy.",
    "recommendation": "A BMI between 18.5 and 24.9 falls within the 'normal' weight range according to the World Health Organization. This range is associated with the lowest health risk for conditions such as heart disease, diabetes, and certain cancers. However, it's important to note that BMI is not a perfect measure as it does not account for muscle mass, bone density, overall body composition, and racial and sex differences. Therefore, while it's a useful starting point, it should not be the only measure of one's health."
  }
}
```

## API Reference

- **API Home:** [BMI Calculator API](https://apiverve.com/marketplace/bmicalculator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/bmicalculator](https://docs.apiverve.com/ref/bmicalculator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
