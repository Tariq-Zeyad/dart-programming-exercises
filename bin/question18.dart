import 'dart:io';

const double freezingLimit = 0;
const double coldLimit = 20;
const double niceWeatherLimit = 30;

double? readTemperature() {
  print('Enter temperature in Celsius:');

  return double.tryParse(stdin.readLineSync() ?? '');
}

String analyzeTemperature(double temperature) {
  if (temperature < freezingLimit) {
    return "It's freezing, stay home.";
  } else if (temperature <= coldLimit) {
    return "It's cold, wear a jacket.";
  } else if (temperature <= niceWeatherLimit) {
    return 'The weather is nice today.';
  } else {
    return "It's hot, stay hydrated.";
  }
}

void main() {
  double? temperature = readTemperature();

  if (temperature == null) {
    print('Invalid input! Please enter a number.');
    return;
  }

  String message = analyzeTemperature(temperature);

  print(message);
}
