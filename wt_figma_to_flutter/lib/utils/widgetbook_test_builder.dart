import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:wt_figma_to_flutter/widgets/component_comparison_test.dart';

abstract class WidgetbookTestBuilder {
  static WidgetbookComponent create(Widget widget, String image) {
    final name = widget.runtimeType.toString();
    return WidgetbookComponent(
      name: name,
      useCases: [
        WidgetbookUseCase(
          name: 'Comparison',
          builder: (context) => ComponentComparisonTest(
            name: image,
            widget: widget,
          ),
        ),
        WidgetbookUseCase(
          name: 'Pixel Perfect',
          builder: (context) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  color: const Color(0xFF15393B),
                  child: SizedBox(
                    height: 500,
                    child: PixelPerfect(
                      assetPath: 'assets/$image.png',
                      scale: 1,
                      initBottom: 20,
                      offset: Offset.zero,
                      initOpacity: 0.4,
                      child: Container(
                        color: const Color(0xFF15393B),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: widget,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
