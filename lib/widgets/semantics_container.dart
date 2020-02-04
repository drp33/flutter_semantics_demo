import 'package:flutter/material.dart';

class SemanticsContainer extends StatelessWidget {
  const SemanticsContainer({
    Key key,
    this.container,
    this.explicitChildNodes,
    this.excludeSemantics,
    this.button,
    this.label,
    this.color,
    this.child,
  }) : super(key: key);

  final bool container;
  final bool explicitChildNodes;
  final bool excludeSemantics;
  final bool button;
  final String label;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Semantics(
          container: container,
          explicitChildNodes: explicitChildNodes,
          excludeSemantics: excludeSemantics,
          button: button,
          label: label,
          child: Container(
            width: constraints.maxWidth * 0.8,
            height: constraints.maxHeight * 0.4,
            color: color,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: child,
            ),
          ),
        );
      },
    );
  }
}
