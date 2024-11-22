import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String widgetTitle;
  final String widgetImage;
  final String widgetDescription;

  const DetailScreen({
    Key? key,
    required this.widgetTitle,
    required this.widgetImage,
    required this.widgetDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widgetTitle),
      ),
      body: Center(
        child: CustomCardDetail(
          imageUrl: widgetImage,
          title: widgetTitle,
          description: widgetDescription,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

