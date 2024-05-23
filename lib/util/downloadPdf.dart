import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

Future<void> downloadPDF(String url, String fileName) async {
  final response = await Dio().get(url);

  // Check for successful download
  if (response.statusCode == 200) {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/$fileName';
    final file = File(path);
    await file.writeAsBytes(response.data);
    print('PDF downloaded to: $path');
  } else {
    print('Download failed with status code: ${response.statusCode}');
  }
}
