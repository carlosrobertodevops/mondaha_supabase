import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<dynamic> stringtJsonToLatLng(
  String jsonString,
  List<String> camposCoordenadas,
) {
  List<dynamic> jsonList = jsonDecode(jsonString);

  for (var jsonMap in jsonList) {
    if (jsonMap is Map<String, dynamic>) {
      for (var campo in camposCoordenadas) {
        if (jsonMap.containsKey(campo) && jsonMap[campo] is String) {
          String coordenadaString = jsonMap[campo];
          final match = RegExp(r'LatLng\(lat: (.*), Ing: (.*)\)')
              .firstMatch(coordenadaString);
          if (match != null) {
            double lat = double.parse(match.group(1)!);
            double lng = double.parse(match.group(2)!);
            jsonMap[campo] = LatLng(lat, lng);
          }
        }
      }
    }
  }

  return List<Map<String, dynamic>>.from(jsonList);
}

String latlngToString(LatLng location) {
  return '${location.latitude.toStringAsFixed(6)}, ${location.longitude.toStringAsFixed(6)}';
}

LatLng stringToLatLng(String coordinates) {
  try {
    final parts = coordinates.split(',');
    final latitude = double.parse(parts[0].trim());
    final longitude = double.parse(parts[1].trim());
    return LatLng(latitude, longitude);
  } catch (e) {
    throw FormatException('A string fornecida não está no formato correto.');
  }
}

List<String> latLngListToStringList(List<LatLng> locations) {
  return locations
      .map((location) =>
          '${location.latitude.toStringAsFixed(6)}, ${location.longitude.toStringAsFixed(6)}')
      .toList();
}
