/// Response models for the BMI Calculator API.

/// API Response wrapper.
class BmicalculatorResponse {
  final String status;
  final dynamic error;
  final BmicalculatorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BmicalculatorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BmicalculatorResponse.fromJson(Map<String, dynamic> json) => BmicalculatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BmicalculatorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the BMI Calculator API.

class BmicalculatorData {
  String? height;
  String? weight;
  num? bmi;
  num? bmiPrime;
  String? category;
  String? risk;
  String? summary;
  BmicalculatorDataIdealweightrange? idealWeightRange;
  BmicalculatorDataWeighttochange? weightToChange;
  num? bmr;
  num? tdee;
  BmicalculatorDataCalorietargets? calorieTargets;
  BmicalculatorDataMacros? macros;

  BmicalculatorData({
    this.height,
    this.weight,
    this.bmi,
    this.bmiPrime,
    this.category,
    this.risk,
    this.summary,
    this.idealWeightRange,
    this.weightToChange,
    this.bmr,
    this.tdee,
    this.calorieTargets,
    this.macros,
  });

  factory BmicalculatorData.fromJson(Map<String, dynamic> json) => BmicalculatorData(
      height: json['height'],
      weight: json['weight'],
      bmi: json['bmi'],
      bmiPrime: json['bmiPrime'],
      category: json['category'],
      risk: json['risk'],
      summary: json['summary'],
      idealWeightRange: json['idealWeightRange'] != null ? BmicalculatorDataIdealweightrange.fromJson(json['idealWeightRange']) : null,
      weightToChange: json['weightToChange'] != null ? BmicalculatorDataWeighttochange.fromJson(json['weightToChange']) : null,
      bmr: json['bmr'],
      tdee: json['tdee'],
      calorieTargets: json['calorieTargets'] != null ? BmicalculatorDataCalorietargets.fromJson(json['calorieTargets']) : null,
      macros: json['macros'] != null ? BmicalculatorDataMacros.fromJson(json['macros']) : null,
    );
}

class BmicalculatorDataIdealweightrange {
  num? min;
  num? max;
  String? unit;

  BmicalculatorDataIdealweightrange({
    this.min,
    this.max,
    this.unit,
  });

  factory BmicalculatorDataIdealweightrange.fromJson(Map<String, dynamic> json) => BmicalculatorDataIdealweightrange(
      min: json['min'],
      max: json['max'],
      unit: json['unit'],
    );
}

class BmicalculatorDataWeighttochange {
  String? direction;
  num? amount;
  String? unit;

  BmicalculatorDataWeighttochange({
    this.direction,
    this.amount,
    this.unit,
  });

  factory BmicalculatorDataWeighttochange.fromJson(Map<String, dynamic> json) => BmicalculatorDataWeighttochange(
      direction: json['direction'],
      amount: json['amount'],
      unit: json['unit'],
    );
}

class BmicalculatorDataCalorietargets {
  num? extremeDeficit;
  num? moderateDeficit;
  num? maintain;
  num? moderateSurplus;
  num? bulkSurplus;

  BmicalculatorDataCalorietargets({
    this.extremeDeficit,
    this.moderateDeficit,
    this.maintain,
    this.moderateSurplus,
    this.bulkSurplus,
  });

  factory BmicalculatorDataCalorietargets.fromJson(Map<String, dynamic> json) => BmicalculatorDataCalorietargets(
      extremeDeficit: json['extremeDeficit'],
      moderateDeficit: json['moderateDeficit'],
      maintain: json['maintain'],
      moderateSurplus: json['moderateSurplus'],
      bulkSurplus: json['bulkSurplus'],
    );
}

class BmicalculatorDataMacros {
  BmicalculatorDataMacrosLose? lose;
  BmicalculatorDataMacrosMaintain? maintain;
  BmicalculatorDataMacrosGain? gain;

  BmicalculatorDataMacros({
    this.lose,
    this.maintain,
    this.gain,
  });

  factory BmicalculatorDataMacros.fromJson(Map<String, dynamic> json) => BmicalculatorDataMacros(
      lose: json['lose'] != null ? BmicalculatorDataMacrosLose.fromJson(json['lose']) : null,
      maintain: json['maintain'] != null ? BmicalculatorDataMacrosMaintain.fromJson(json['maintain']) : null,
      gain: json['gain'] != null ? BmicalculatorDataMacrosGain.fromJson(json['gain']) : null,
    );
}

class BmicalculatorDataMacrosLose {
  num? protein;
  num? carbs;
  num? fat;

  BmicalculatorDataMacrosLose({
    this.protein,
    this.carbs,
    this.fat,
  });

  factory BmicalculatorDataMacrosLose.fromJson(Map<String, dynamic> json) => BmicalculatorDataMacrosLose(
      protein: json['protein'],
      carbs: json['carbs'],
      fat: json['fat'],
    );
}

class BmicalculatorDataMacrosMaintain {
  num? protein;
  num? carbs;
  num? fat;

  BmicalculatorDataMacrosMaintain({
    this.protein,
    this.carbs,
    this.fat,
  });

  factory BmicalculatorDataMacrosMaintain.fromJson(Map<String, dynamic> json) => BmicalculatorDataMacrosMaintain(
      protein: json['protein'],
      carbs: json['carbs'],
      fat: json['fat'],
    );
}

class BmicalculatorDataMacrosGain {
  num? protein;
  num? carbs;
  num? fat;

  BmicalculatorDataMacrosGain({
    this.protein,
    this.carbs,
    this.fat,
  });

  factory BmicalculatorDataMacrosGain.fromJson(Map<String, dynamic> json) => BmicalculatorDataMacrosGain(
      protein: json['protein'],
      carbs: json['carbs'],
      fat: json['fat'],
    );
}

class BmicalculatorRequest {
  double weight;
  double height;
  String unit;
  double? age;
  String? gender;
  String? activityLevel;

  BmicalculatorRequest({
    required this.weight,
    required this.height,
    required this.unit,
    this.age,
    this.gender,
    this.activityLevel,
  });

  Map<String, dynamic> toJson() => {
      'weight': weight,
      'height': height,
      'unit': unit,
      if (age != null) 'age': age,
      if (gender != null) 'gender': gender,
      if (activityLevel != null) 'activityLevel': activityLevel,
    };
}
