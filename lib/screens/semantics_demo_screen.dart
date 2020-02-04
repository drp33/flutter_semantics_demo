import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:semantics_demo/config/app_settings.dart';
import 'package:semantics_demo/widgets/semantics_container.dart';

class SemanticsDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,

      // Grandparent
      child: SemanticsContainer(
        container: true,
        explicitChildNodes: true,
        label: 'Grandparent',
        color: Colors.green.shade800,

        // Parent
        child: SemanticsContainer(
          container: true,
          explicitChildNodes: true,
          label: 'Parent',
          color: Colors.green.shade500,

          // Child
          child: SemanticsContainer(
            container: true,
            explicitChildNodes: true,
            label: 'Child',
            color: Colors.green.shade200,
            child: RaisedButton(
              onPressed: () {
                final appSettings = Provider.of<AppSettings>(context, listen: false);
                appSettings.toggleSemanticsDebugger();
                debugDumpSemanticsTree(DebugSemanticsDumpOrder.traversalOrder);
              },
              child: Text('Toggle debugger'),
            ),
          ),
        ),
      ),
    );
  }
}
