import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:semantics_demo/config/app_settings.dart';
import 'package:semantics_demo/screens/semantics_demo_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppSettings(),
      child: Consumer<AppSettings>(
        builder: (_, settings, __) => MaterialApp(
          showSemanticsDebugger: settings.showSemanticsDebugger,
          debugShowCheckedModeBanner: false,
          home: SemanticsDemoScreen(),
        ),
      ),
    );
  }
}
