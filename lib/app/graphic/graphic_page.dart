import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GraphicPage extends StatefulWidget {
  final String title;

  const GraphicPage({Key key, this.title = "Graphic"}) : super(key: key);

  @override
  _GraphicPageState createState() => _GraphicPageState();
}

class _GraphicPageState extends State<GraphicPage> {
  final List<charts.Series> seriesList = _createSampleData();

  Widget _buildChartPie({test = false}) {
    return Container(
      height: 200.0,
      width: 150.0,
      child: charts.PieChart(
        seriesList,
        animate: true,
        animationDuration: Duration(milliseconds: 800),
        // Configure the width of the pie slices to 60px. The remaining space in
        // the chart will be left as a hole in the center.
        defaultRenderer: new charts.ArcRendererConfig(
          arcWidth: 25,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: <Widget>[
            _buildChartPie(test: true),
            _buildChartPie(),
            _buildChartPie(),
            _buildChartPie(),
          ],
        ),
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 100),
      new LinearSales(1, 75),
      new LinearSales(2, 25),
      new LinearSales(3, 5),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
