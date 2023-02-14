import 'package:expanding_cards/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:expanding_cards/widgets/custom_container.dart';
import 'package:provider/provider.dart';

class ProgressBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final posicion = Provider.of<GetterProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomContainer(
                  isVisible: true,
                  index: 1,
                  texto: '1',
                ),
                CustomContainer(
                  isVisible: true,
                  index: 2,
                  texto: '2',
                ),
                CustomContainer(
                  isVisible: true,
                  index: 3,
                  texto: '3',
                ),
                CustomContainer(
                  isVisible: false,
                  index: 4,
                  texto: '4',
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const Spacer(),
                CustomButton(
                  string: 'Prev',
                  onPressed: () {
                    final posicion =
                        Provider.of<GetterProvider>(context, listen: false);
                    posicion.indexPorPintar = posicion.indexPorPintar - 1;
                  },
                ),
                const Spacer(),
                CustomButton(
                  string: 'Next',
                  onPressed: () {
                    final posicion =
                        Provider.of<GetterProvider>(context, listen: false);
                    posicion.indexPorPintar = posicion.indexPorPintar + 1;
                  },
                ),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}