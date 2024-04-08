import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'telas/pag_Explorar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Set to true to see the app in different devices
      builder: (context) => const PagExplorar(),
    ),
  );
}
