declare module '@apiverve/bmicalculator' {
  export interface bmicalculatorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface bmicalculatorResponse {
    status: string;
    error: string | null;
    data: BMICalculatorData;
    code?: number;
  }


  interface BMICalculatorData {
      height:         string;
      weight:         string;
      bmi:            number;
      risk:           string;
      summary:        string;
      recommendation: string;
  }

  export default class bmicalculatorWrapper {
    constructor(options: bmicalculatorOptions);

    execute(callback: (error: any, data: bmicalculatorResponse | null) => void): Promise<bmicalculatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bmicalculatorResponse | null) => void): Promise<bmicalculatorResponse>;
    execute(query?: Record<string, any>): Promise<bmicalculatorResponse>;
  }
}
