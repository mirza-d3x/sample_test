import 'dart:convert';

import 'package:http/http.dart';
import 'package:sample_project/get_data_model.dart';

Future<GetData> getDataApi() async {
  Response response = await get(
    Uri.parse('https://randomuser.me/api'),
    headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
  );

  print(response.body);
  return GetData.fromJson(jsonDecode(response.body));
}
