using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BMICalculator
{
    /// <summary>
    /// Query options for the BMI Calculator API
    /// </summary>
    public class BMICalculatorQueryOptions
    {
        /// <summary>
        /// Weight in kg (metric) or lbs (imperial)
        /// </summary>
        [JsonProperty("weight")]
        public double Weight { get; set; }

        /// <summary>
        /// Height in cm (metric) or inches (imperial)
        /// </summary>
        [JsonProperty("height")]
        public double Height { get; set; }

        /// <summary>
        /// Unit system for weight and height
        /// </summary>
        [JsonProperty("unit")]
        public string Unit { get; set; }

        /// <summary>
        /// Age in years (required for BMR/TDEE calculations)
        /// </summary>
        [JsonProperty("age")]
        public double? Age { get; set; }

        /// <summary>
        /// Gender (required for BMR/TDEE calculations)
        /// </summary>
        [JsonProperty("gender")]
        public string Gender { get; set; }

        /// <summary>
        /// Activity level (required for TDEE/calorie calculations)
        /// </summary>
        [JsonProperty("activityLevel")]
        public string ActivityLevel { get; set; }
    }
}
