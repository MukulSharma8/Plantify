import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:plantify/constants/api_constants.dart';
import 'package:plantify/models/plant.dart';

class PlantService {

  Future<List<Plant>> getPlants() async {

    final url = Uri.parse(
      "${ApiConstants.baseUrl}/species-list?key=${ApiConstants.apiKey}",
    );

    final response = await http.get(url);

    if(response.statusCode == 200){

      final json = jsonDecode(response.body);

      final data = json['data'] as List;

      return data
          .map((plantJson) => Plant.fromJson(plantJson))
          .toList();

    }else{
      throw Exception("Failed to load plants");
    }

  }

}