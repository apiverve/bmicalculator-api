/// Response models for the BMI Calculator API.

/// API Response wrapper.
class BmicalculatorResponse {
  final String status;
  final dynamic error;
  final BmicalculatorData? data;

  BmicalculatorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BmicalculatorResponse.fromJson(Map<String, dynamic> json) => BmicalculatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BmicalculatorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the BMI Calculator API.

class BmicalculatorData {
  String? height;
  String? weight;
  double? bmi;
  String? risk;
  String? summary;
  String? recommendation;

  BmicalculatorData({
    this.height,
    this.weight,
    this.bmi,
    this.risk,
    this.summary,
    this.recommendation,
  });

  factory BmicalculatorData.fromJson(Map<String, dynamic> json) => BmicalculatorData(
      height: json['height'],
      weight: json['weight'],
      bmi: json['bmi'],
      risk: json['risk'],
      summary: json['summary'],
      recommendation: json['recommendation'],
    );
}

class BmicalculatorRequest {
  double weight;
  double height;
  String unit;

  BmicalculatorRequest({
    required this.weight,
    required this.height,
    required this.unit,
  });

  Map<String, dynamic> toJson() => {
      'weight': weight,
      'height': height,
      'unit': unit,
    };
}
