import 'package:flutter/material.dart';

class OnionCard extends StatelessWidget {
  const OnionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, bc) {
      return Stack(
        children: [
          SizedBox(
            width: bc.maxWidth,
            height: bc.maxHeight,
            child: Container(
              padding: EdgeInsets.only(top: bc.maxHeight * .84),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  "Hello hey",
                  style: TextStyle(
                    inherit: true,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: bc.maxWidth,
            height: bc.maxHeight * .84,
            child: Container(
              padding: EdgeInsets.only(top: bc.maxHeight * .42),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  "Hello hey",
                  style: TextStyle(
                    inherit: true,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: bc.maxWidth,
            height: bc.maxHeight * .42,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  "Hello hey",
                  style: TextStyle(
                    inherit: true,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
