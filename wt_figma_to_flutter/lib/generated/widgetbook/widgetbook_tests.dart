import 'package:widgetbook/widgetbook.dart';
import 'package:wt_figma_to_flutter/generated/components/activity_goal.dart';
import 'package:wt_figma_to_flutter/generated/components/goal_streak.dart';
import 'package:wt_figma_to_flutter/generated/components/home_charts.dart';
import 'package:wt_figma_to_flutter/generated/components/info_card.dart';
import 'package:wt_figma_to_flutter/generated/components/nutrition_goal.dart';
import 'package:wt_figma_to_flutter/utils/widgetbook_test_builder.dart';

abstract class WidgetbookTests {
  static final components = <WidgetbookComponent>[
    WidgetbookTestBuilder.create(const ActivityGoal(), "activity_goal"),
    WidgetbookTestBuilder.create(const GoalStreak(), "goal_streak"),
    WidgetbookTestBuilder.create(const HomeCharts(), "home_charts"),
    WidgetbookTestBuilder.create(const InfoCard(), "info_card"),
    WidgetbookTestBuilder.create(const NutritionGoal(), "nutrition_goal"),
  ];
}
