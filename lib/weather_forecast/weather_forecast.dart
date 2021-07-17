import 'package:flutter/material.dart';
import 'package:restapi/weather_forecast/model/weather_forecast_model.dart';

import 'network/network.dart';

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  _WeatherForecastState createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  late Future<WeatherForecastModel> forecastObject;
  String _cityName = 'Kathmandu';

  @override
  void initState() {
    forecastObject = Network.getWeatherForecast(cityName: _cityName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast'),
      ),
    );
  }
}
