import 'package:write_score/design/spaces.dart';
import 'package:write_score/feature/app/application/app/app_bloc.dart';
import 'package:write_score/gen/assets.gen.dart';
import 'package:write_score/helper/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class _Intro {
  _Intro({required this.title, required this.body, required this.image});

  String title;
  String body;
  Image image;
}

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  late PageController _pageController;
  late int initPage;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    initPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    final list = <_Intro>[
      // _Intro(
      //   title: 'Hiển thị ngay thông tin phòng trống',
      //   body:
      //       'Thông tin về các phòng trống trực tiếp từ chủ nhà để lựa chọn phù hợp với nhu cầu của bạn.',
      //   image: Assets.images.onBoard1.image(fit: BoxFit.cover),
      // ),
      // _Intro(
      //   title: 'Cọc phòng trực tiếp',
      //   body:
      //       'Đặt cọc trực tiếp từ chủ nhà để chắc chắn giữ chỗ, tránh tình trạng đặt trước bởi người khác. ',
      //   image: Assets.images.onBoard2.image(fit: BoxFit.cover),
      // ),
      // _Intro(
      //   title: 'Kết nối với cộng đồng môi giới',
      //   body:
      //       'Tìm kiếm và kết nối với các môi giới giúp bạn tìm khách thuê cho những bất động sản trống',
      //   image: Assets.images.onboarding.onboarding03.image(fit: BoxFit.cover),
      // ),
      // _Intro(
      //   title: 'Độ tin cậy cao, hạn chế khách ảo',
      //   body:
      //       'Kết nối với chủ nhà và khách thuê uy tín, tránh những khách ảo, không nghiêm túc',
      //   image: Assets.images.onboarding.onboarding04.image(fit: BoxFit.cover),
      // ),
    ];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: PageView.builder(
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (i) {
                        setState(() {
                          initPage = i;
                        });
                      },
                      itemCount: list.length,
                      itemBuilder: (context, index) =>
                          _itemOnboard(context, list[index])),
                ),
                spaceH32,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: _pageController, // PageController
                    count: list.length,
                    effect: ExpandingDotsEffect(
                        activeDotColor: context.colorScheme.primary,
                        dotHeight: 8,
                        dotWidth: 8,
                        strokeWidth: 1 / 3), // your preferred effect
                    onDotClicked: (index) {},
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 32),
            child: MaterialButton(
                height: 40,
                elevation: 0,
                shape: const StadiumBorder(),
                color: context.colorScheme.primary,
                onPressed: () {
                  context.read<AppBloc>().add(const AppEvent.endOnboard());
                },
                child: Text(
                  'Bắt đầu trải nghiệm',
                  style: context.textTheme.bodyLarge
                      ?.copyWith(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }

  Widget _itemOnboard(BuildContext context, _Intro item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: item.image,
          ),
          spaceH40,
          Flexible(
            child: Text(
              item.title,
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          spaceH12,
          Text(
            item.body,
            style: context.textTheme.bodyMedium,
            // maxLines: 3,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class _CurvePath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, 0)
      ..lineTo(0, 40)
      ..quadraticBezierTo(size.width / 4, 0, size.width / 2, 0)
      ..quadraticBezierTo(size.width - size.width / 4, 0, size.width, 40)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
