import 'package:test/services/location.dart';
import 'package:test/services/networking.dart';
import 'package:test/screens/loading_screen.dart';

class WeatherModel {
  Future<dynamic> getCurrentCityData(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        url:
            'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=52cd5705d8d3383de1c55d90adf0c2e6&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location newLocation = Location();
    await newLocation.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        url:
            "https://api.openweathermap.org/data/2.5/weather?lat=${newLocation.latitude}&lon=${newLocation.longitude}&appid=52cd5705d8d3383de1c55d90adf0c2e6&units=metric");

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(var condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(var temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
