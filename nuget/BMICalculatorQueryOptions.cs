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
        /// The weight of the person in either kg or lb
        /// Example: 70
        /// </summary>
        [JsonProperty("weight")]
        public string Weight { get; set; }

        /// <summary>
        /// The height of the person in cm or ft
        /// Example: 170
        /// </summary>
        [JsonProperty("height")]
        public string Height { get; set; }

        /// <summary>
        /// The unit of measurement for weight and height (metric or imperial)
        /// Example: metric
        /// </summary>
        [JsonProperty("unit")]
        public string Unit { get; set; }
    }
}
