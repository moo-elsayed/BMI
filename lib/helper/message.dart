String getBmiMessage({required String category}) {
  switch (category) {
    case 'Underweight':
      return "You are classified as underweight. It might be beneficial to consult a healthcare professional to discuss your diet and overall health.";

    case 'Normal':
      return "You have a normal body weight. Good job! Keep up the healthy lifestyle!";

    case 'Overweight':
      return "You are considered overweight. Making some adjustments to your diet and activity level can help improve your health.";

    case 'Obese':
      return "You are classified as obese. It's important to focus on a healthy lifestyle. Consider seeking guidance from a healthcare provider for support.";

    default:
      return "You are classified as extremely obese. Prioritizing your health is crucial. Please consult a healthcare professional for a tailored plan to help you on your journey.";
  }
}
