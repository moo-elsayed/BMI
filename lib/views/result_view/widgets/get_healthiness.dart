String getHealthiness({required double result}) {
  String healthinessString;
  if (result < 18.5) {
    healthinessString = 'Underweight';
  } else if (result <= 24.9) {
    healthinessString = 'Normal';
  } else if (result <= 29.9) {
    healthinessString = 'Overweight';
  } else {
    healthinessString = 'Obese';
  }
  return healthinessString;
}
