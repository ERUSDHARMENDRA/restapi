import 'package:http/http.dart' as http;
import 'package:restapi/weather_forecast/model/weather_forecast_model.dart';
import 'dart:convert' as convert;

class Network {
  static Future<WeatherForecastModel> getWeatherForecast(
      {required String cityName}) async {
    var finalUrl = Uri.https('api.openweathermap.org',
        'data/2.5/weather?q=kathmandu&appid=d7bbd4f2f2d922c749e581b43577a8b2');

    final response = await http.get(finalUrl);
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200) {
      //! here we get actual mapped model
      print(jsonResponse.length);
      print(jsonResponse);
    } else {
      print('something went wrong');
    }
    return WeatherForecastModel.fromJson(jsonResponse);
  }
}
