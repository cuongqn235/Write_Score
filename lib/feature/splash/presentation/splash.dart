import 'package:write_score/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   child: Assets.images.backgroundTopPng.image(
            //     width: 0.5.sw,
            //     height: 0.5.sh,
            //   ),
            // ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Assets.images.backgroundBottomPng.image(
            //     width: 0.5.sw,
            //     height: 0.5.sh,
            //   ),
            // ),
            Positioned.fill(
              child: Center(
                child: _IconAnimation(
                  iconSize: 150.r,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconAnimation extends StatefulWidget {
  final double iconSize;
  const _IconAnimation({super.key, required this.iconSize});

  @override
  State<_IconAnimation> createState() => __IconAnimationState();
}

class __IconAnimationState extends State<_IconAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> aniamtion;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    aniamtion = CurvedAnimation(parent: controller, curve: Curves.elasticOut);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.forward();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var logo = Assets.images.logoApp.image(
      width: widget.iconSize,
      height: widget.iconSize,
    );
    final brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      logo = Assets.images.logoAppDark.image(
        width: widget.iconSize,
        height: widget.iconSize,
      );
    }

    return ScaleTransition(
      scale: aniamtion,
      child: logo,
    );
  }
}
