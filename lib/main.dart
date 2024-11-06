import 'package:flutter/material.dart';
import 'package:flutter_count/src/app.dart';
import 'package:flutter_count/src/models/counter_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}
