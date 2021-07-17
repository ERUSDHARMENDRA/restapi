import 'package:flutter/material.dart';

import 'weather_forecast/weather_forecast.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: WeatherForecast(),
    ),
  );
}
