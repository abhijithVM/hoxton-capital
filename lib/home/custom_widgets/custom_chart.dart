import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';

Widget salesChart(BuildContext context) {
  return Container(
    color: Colors.white,
    // padding: const EdgeInsets.all(12.0),
    child: LineChart(
      // sampleChart(),
      sampleData(),
    ),
  );
}

LineChartData sampleData() {
  return LineChartData(
    lineTouchData: LineTouchData(
      enabled: true,
    ),
    gridData: FlGridData(
      show: true,
    ),
    titlesData: FlTitlesData(
      bottomTitles: SideTitles(
        showTitles: false,
        reservedSize: 32,
        // getTextStyles: (value,2) =>   const TextStyle(
        //   color: Color(0xff72719b),
        //   fontWeight: FontWeight.bold,
        //   fontSize: 16,
        // ),
        margin: 10,
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '1';
            case 2:
              return '2';
            case 3:
              return '3';
            case 4:
              return '5';
            case 5:
              return '6';
          }
          return '';
        },
      ),
      leftTitles: SideTitles(
        showTitles: true,
        // getTextStyles: (value,2) =>  const TextStyle(
        //   color: Color(0xff75729e),
        //   fontWeight: FontWeight.bold,
        //   fontSize: 14,
        // ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '10';
            case 2:
              return '20';
            case 3:
              return '30';
            case 4:
              return '50';
            case 5:
              return '60';
          }
          return '';
        },
        margin: 10,
        reservedSize: 30,
      ),
    ),
    borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 4,
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        )),
    minX: 0,
    maxX: 16,
    maxY: 8,
    minY: 0,
    lineBarsData: linesBarData2(),
  );
}

List<LineChartBarData> linesBarData2() {
  return [
    LineChartBarData(
      spots: [
        const FlSpot(1, 1),
        const FlSpot(3, 4),
        const FlSpot(5, 1.8),
        const FlSpot(7, 5),
        const FlSpot(10, 2),
        const FlSpot(12, 2.2),
        const FlSpot(13, 1.8),
      ],
      isCurved: true,
      curveSmoothness: 0,
      colors: const [
        Color(0x444af699),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    ),
    LineChartBarData(
      spots: [
        const FlSpot(1, 1),
        const FlSpot(3, 2.8),
        const FlSpot(7, 1.2),
        const FlSpot(10, 2.8),
        const FlSpot(12, 2.6),
        const FlSpot(13, 3.9),
      ],
      isCurved: true,
      colors: const [
        Color(0x99aa4cfc),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: true, colors: [
        const Color(0x33aa4cfc),
      ]),
    ),
    LineChartBarData(
      spots: [
        const FlSpot(1, 3.8),
        const FlSpot(3, 1.9),
        const FlSpot(6, 5),
        const FlSpot(10, 3.3),
        const FlSpot(13, 4.5),
      ],
      isCurved: true,
      curveSmoothness: 0,
      colors: const [
        Color(0x4427b6fc),
      ],
      barWidth: 2,
      isStrokeCapRound: true,
      dotData: FlDotData(show: true),
      belowBarData: BarAreaData(
        show: false,
      ),
    ),
  ];
}
