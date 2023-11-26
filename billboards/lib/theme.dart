import 'package:billboards/theme_data.dart';
import 'package:flutter/widgets.dart';

class TonalTheme extends InheritedWidget {
  const TonalTheme({
    super.key,
    required this.data,
    required super.child,
  });

  final TonalThemeData data;

  static TonalTheme? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TonalTheme>();
  }

  static TonalTheme of(BuildContext context) {
    final TonalTheme? result = maybeOf(context);
    assert(result != null, 'No _Tonal found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TonalTheme oldWidget) => data != oldWidget.data;
}
