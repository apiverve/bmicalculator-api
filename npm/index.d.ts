declare module '@apiverve/bmicalculator' {
  export interface bmicalculatorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface bmicalculatorResponse {
    status: string;
    error: string | null;
    data: BMICalculatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BMICalculatorData {
      height:           null | string;
      weight:           null | string;
      bmi:              number | null;
      bmiPrime:         number | null;
      category:         null | string;
      risk:             null | string;
      summary:          null | string;
      idealWeightRange: IdealWeightRange;
      weightToChange:   WeightToChange;
      bmr:              number | null;
      tdee:             number | null;
      calorieTargets:   CalorieTargets;
      macros:           Macros;
  }
  
  interface CalorieTargets {
      extremeDeficit:  number | null;
      moderateDeficit: number | null;
      maintain:        number | null;
      moderateSurplus: number | null;
      bulkSurplus:     number | null;
  }
  
  interface IdealWeightRange {
      min:  number | null;
      max:  number | null;
      unit: null | string;
  }
  
  interface Macros {
      lose:     Gain;
      maintain: Gain;
      gain:     Gain;
  }
  
  interface Gain {
      protein: number | null;
      carbs:   number | null;
      fat:     number | null;
  }
  
  interface WeightToChange {
      direction: null | string;
      amount:    number | null;
      unit:      null | string;
  }

  export default class bmicalculatorWrapper {
    constructor(options: bmicalculatorOptions);

    execute(callback: (error: any, data: bmicalculatorResponse | null) => void): Promise<bmicalculatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bmicalculatorResponse | null) => void): Promise<bmicalculatorResponse>;
    execute(query?: Record<string, any>): Promise<bmicalculatorResponse>;
  }
}
