import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final double result;

  const ResultsPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results page'),
      ),
      body: Text('Results..${result.toString()}'),
      // body: const Text('Results..'),
    );
  }
}
