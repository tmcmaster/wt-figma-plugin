import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:wt_figma_to_flutter/generated/widgetbook/widgetbook_tests.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends ConsumerWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final goRouter = ref.watch(GoRouterStateNotifier.provider);

    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'Widgetbook Tests',
      ),
      textScaleFactors: [1, 0.5, 1.5],
      categories: [
        WidgetbookCategory(
          name: 'Home',
          folders: [
            WidgetbookFolder(
              name: 'Widgets',
              widgets: WidgetbookTests.components,
            ),
            WidgetbookFolder(
              name: 'Screens',
              widgets: [],
            ),
          ],
        )
      ],
      scaffoldBuilder: (_, __, child) => Scaffold(
        backgroundColor: const Color(0xFF15393B),
        body: child,
      ),
      themes: [
        // TODO: need to work out how to get this to effect the themes in the scaffold builder.
        WidgetbookTheme(
          name: 'Ilume',
          data: ThemeData.light(),
        ),
      ],
    );
  }
}
