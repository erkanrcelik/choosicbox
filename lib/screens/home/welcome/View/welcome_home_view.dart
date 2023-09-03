import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:liquid_container/liquid_container.dart';

class WelcomeHomeView extends StatefulWidget {
  const WelcomeHomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeHomeView> createState() => _WelcomeHomeViewState();
}

class _WelcomeHomeViewState extends State<WelcomeHomeView> {
  void initState() {

    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed('/overview');
    });
  }

  @override
  Widget build(BuildContext context) {
    final optionsParam = Options(
      layers: [
        LayerModel(
          points: [],
          viscosity: 0.9,
          touchForce: 0, // İçerik hareket etmeyecek
          forceLimit: 0, // İçerik hareket etmeyecek
          color: Theme.of(context).colorScheme.surface, // Kırmızı renk
        ),
        LayerModel(
          points: [],
          viscosity: 0.7,
          touchForce: 30,
          forceLimit: 15,
          color:Theme.of(context).colorScheme.secondary,
        ),
        LayerModel(
          points: [],
          viscosity: 0.4,
          touchForce: 50,
          forceLimit: 10,
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
      gap: 20,
      noise: 15,
      forceFactorBuild: 20,
      forceFactorOnTap: 150,
      scaleOptionLayer: [1.5, 1.2, 1],
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150.w,
          height: 150.h,
          child: LiquidContainer(
            onTap: _onTapToLiquidButton,
            optionsParam: optionsParam,
            boxDecorationLabel: _borderForm(),
            child: Center(
              child: FlutterLogo(
                size: 100,
              ),
            ),
          ),
        ),
      ],
    );
  }

  BoxDecoration _borderForm() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(90),
    );
  }

  void _onTapToLiquidButton() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: ScaffoldMessenger.of(context).clearSnackBars,
                icon: const Icon(
                  Icons.close,
                  size: 30,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
