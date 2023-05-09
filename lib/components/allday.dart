import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

import 'package:badges/badges.dart' as badges;

class WlAllDayPage extends StatefulWidget {
  const WlAllDayPage({Key? key}) : super(key: key);

  @override
  State<WlAllDayPage> createState() => _WlAllDayPageState();
}

class _WlAllDayPageState extends State<WlAllDayPage> {
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Apr';
        break;
      case 4:
        text = 'May';
        break;
      case 5:
        text = 'Jun';
        break;
      case 6:
        text = 'Jul';
        break;
      case 7:
        text = 'Aug';
        break;
      case 8:
        text = 'Sep';
        break;
      case 9:
        text = 'Oct';
        break;
      case 10:
        text = 'Nov';
        break;
      case 11:
        text = 'Dec';
        break;
      default:
        return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '\$ ${value + 0.5}',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              BadgeText(
                innerText: "稼動率",
                badgeColor: 0xff58a0f5,
              ),
              BadgeText(
                innerText: "直通良率",
                badgeColor: 0xffffc847,
              ),
              BadgeText(
                innerText: "生產效率",
                badgeColor: 0xff82dc85,
              ),
              BadgeText(
                innerText: "綜合效能",
                badgeColor: 0xfff16767,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            height: 350,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                    left: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 4),
                      FlSpot(1, 3.5),
                      FlSpot(2, 4.5),
                      FlSpot(3, 1),
                      FlSpot(4, 4),
                      FlSpot(5, 6),
                      FlSpot(6, 6.5),
                      FlSpot(7, 6),
                      FlSpot(8, 4),
                      FlSpot(9, 6),
                      FlSpot(10, 6),
                      FlSpot(11, 7),
                    ],
                    isCurved: true,
                    barWidth: 2,
                    color: const Color(0xff58a0f5),
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 7),
                      FlSpot(1, 3),
                      FlSpot(2, 4),
                      FlSpot(3, 2),
                      FlSpot(4, 3),
                      FlSpot(5, 4),
                      FlSpot(6, 5),
                      FlSpot(7, 3),
                      FlSpot(8, 1),
                      FlSpot(9, 8),
                      FlSpot(10, 1),
                      FlSpot(11, 3),
                    ],
                    isCurved: false,
                    barWidth: 2,
                    color: const Color(0xffffc847),
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 2),
                      FlSpot(1, 1.5),
                      FlSpot(2, 2.5),
                      FlSpot(3, 0.5),
                      FlSpot(4, 2.5),
                      FlSpot(5, 4),
                      FlSpot(6, 4.5),
                      FlSpot(7, 4),
                      FlSpot(8, 2.5),
                      FlSpot(9, 4),
                      FlSpot(10, 4),
                      FlSpot(11, 5)
                    ],
                    isCurved: false,
                    barWidth: 2,
                    color: const Color(0xff82dc85),
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 5),
                      FlSpot(1, 6),
                      FlSpot(2, 3.5),
                      FlSpot(3, 2),
                      FlSpot(4, 5.5),
                      FlSpot(5, 7),
                      FlSpot(6, 7.5),
                      FlSpot(7, 7),
                      FlSpot(8, 5.5),
                      FlSpot(9, 7),
                      FlSpot(10, 7),
                      FlSpot(11, 8),
                    ],
                    isCurved: false,
                    barWidth: 2,
                    color: const Color(0xfff16767),
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                ],
                // read about it in the LineChartData section
                titlesData: FlTitlesData(
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: leftTitleWidgets,
                      interval: 1,
                      reservedSize: 36,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: bottomTitleWidgets,
                    ),
                  ),
                ),
              ),
              swapAnimationDuration:
                  const Duration(milliseconds: 150), // Optional
              swapAnimationCurve: Curves.linear, // Optional
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              BadgeText(
                innerText: "總生產數量",
                badgeColor: 0xff58a0f5,
              ),
              BadgeText(
                innerText: "每小時產出",
                badgeColor: 0xff85cff9,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            height: 350,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                    left: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 4),
                      FlSpot(1, 3.5),
                      FlSpot(2, 4.5),
                      FlSpot(3, 1),
                      FlSpot(4, 4),
                      FlSpot(5, 6),
                      FlSpot(6, 6.5),
                      FlSpot(7, 6),
                      FlSpot(8, 4),
                      FlSpot(9, 6),
                      FlSpot(10, 6),
                      FlSpot(11, 7),
                    ],
                    isCurved: true,
                    barWidth: 2,
                    color: const Color(0xff58a0f5),
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 7),
                      FlSpot(1, 3),
                      FlSpot(2, 4),
                      FlSpot(3, 2),
                      FlSpot(4, 3),
                      FlSpot(5, 4),
                      FlSpot(6, 5),
                      FlSpot(7, 3),
                      FlSpot(8, 1),
                      FlSpot(9, 8),
                      FlSpot(10, 1),
                      FlSpot(11, 3),
                    ],
                    isCurved: false,
                    barWidth: 2,
                    color: const Color(0xff85cff9),
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                ],
                // read about it in the LineChartData section
                titlesData: FlTitlesData(
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: leftTitleWidgets,
                      interval: 1,
                      reservedSize: 36,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: bottomTitleWidgets,
                    ),
                  ),
                ),
              ),
              swapAnimationDuration:
                  const Duration(milliseconds: 150), // Optional
              swapAnimationCurve: Curves.linear, // Optional
            ),
          ),
        ],
      ),
    );
  }
}

class BadgeText extends StatelessWidget {
  final String innerText;
  final int badgeColor;
  const BadgeText({
    super.key,
    required this.innerText,
    required this.badgeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        badges.Badge(
          badgeAnimation: const badges.BadgeAnimation.fade(toAnimate: false),
          badgeContent: const SizedBox(
            width: 3,
            height: 3,
          ),
          badgeStyle:
              badges.BadgeStyle(elevation: 0, badgeColor: Color(badgeColor)),
        ),
        Text(
          innerText,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
