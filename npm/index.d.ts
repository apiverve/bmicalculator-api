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
      height:         null | string;
      weight:         null | string;
      bmi:            number | null;
      risk:           null | string;
      summary:        null | string;
      recommendation: null | string;
  }

  export default class bmicalculatorWrapper {
    constructor(options: bmicalculatorOptions);

    execute(callback: (error: any, data: bmicalculatorResponse | null) => void): Promise<bmicalculatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bmicalculatorResponse | null) => void): Promise<bmicalculatorResponse>;
    execute(query?: Record<string, any>): Promise<bmicalculatorResponse>;
  }
}
