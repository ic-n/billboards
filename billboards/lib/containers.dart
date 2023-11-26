import 'package:billboards/theme.dart';
import 'package:flutter/widgets.dart';

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final tt = TonalTheme.of(context).data;

    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        color: tt.primary,
        borderRadius: BorderRadius.circular(tt.radius),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: tt.padding,
        vertical: tt.padding,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({
    super.key,
    required this.child,
  });

  final Text child;

  @override
  Widget build(BuildContext context) {
    final tt = TonalTheme.of(context).data;

    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: tt.primary,
            borderRadius: BorderRadius.circular(tt.radius),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: tt.fontSize / 4 + tt.padding / 4 + tt.radius / 2,
            vertical: tt.fontSize / 4 + tt.padding / 4,
          ),
          clipBehavior: Clip.antiAlias,
          child: child,
        ),
      ],
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    super.key,
    required this.children,
  });

  final List<TextCard> children;

  @override
  Widget build(BuildContext context) {
    final tt = TonalTheme.of(context).data;

    return Padding(
      padding: EdgeInsets.all(tt.gap),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: tt.gap,
        runAlignment: WrapAlignment.center,
        direction: Axis.horizontal,
        children: children,
      ),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final tt = TonalTheme.of(context).data;
    final safe = MediaQuery.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: safe.padding.top,
          color: tt.primary,
        ),
        Container(
          width: double.infinity,
          height: 20,
          color: tt.canvas,
        ),
        Flexible(
          child: ListView(
            children: children,
          ),
        ),
        Container(
          width: double.infinity,
          height: 20,
          color: tt.canvas,
        ),
        Container(
          width: double.infinity,
          height: safe.padding.bottom,
          color: tt.primary,
        ),
      ],
    );
  }
}
