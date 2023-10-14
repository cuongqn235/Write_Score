part of '../home_page.dart';

Widget _appBar(BuildContext context) {
  return SliverAppBar(
    pinned: true,
    expandedHeight: 168.h,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    // flexibleSpace: ClipRRect(
    //   borderRadius: BorderRadius.only(
    //     bottomRight: Radius.circular(24.r),
    //     bottomLeft: Radius.circular(24.r),
    //   ),
    //   child: Image.asset(
    //     Assets.images.backgroundAppBar.path,
    //     fit: BoxFit.cover,
    //     width: double.infinity,
    //   ),
    // ),
    // title: Theme(
    //   data: AppTheme.renterDarkTheme(context),
    //   child: HomeHeaderBar(
    //     onTapSearch: () => context.toNamed<void>(
    //       RenterRouteName.findRoomListRequest,
    //     ),
    //     unreadNotification: state.notificationUnreadCounted,
    //     isRenter: true,
    //   ),
    // )
    title: const Text('Lịch sử ghi điểm'),
    // bottom: PreferredSize(
    //   preferredSize: Size(double.infinity, 48.h),
    //   child: Container(
    //     padding: EdgeInsets.all(12.h),
    //     margin: const EdgeInsets.symmetric(horizontal: 16),
    //     decoration: BoxDecoration(
    //       color: colorWhite,
    //       boxShadow: shadowE2,
    //       borderRadius: BorderRadius.circular(12),
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         Expanded(
    //           child: _renderIconFeature(
    //             context,
    //             Assets.icons.home.memory,
    //             'Kỉ niệm',
    //             () {},
    //           ),
    //         ),
    //         Expanded(
    //           child: _renderIconFeature(
    //             context,
    //             Assets.icons.home.history,
    //             'Lịch sử',
    //             () {},
    //           ),
    //         ),
    //         Expanded(
    //           child: _renderIconFeature(
    //             context,
    //             Assets.icons.home.special,
    //             'Ngày đặt biệt',
    //             () async {},
    //           ),
    //         ),
    //         Expanded(
    //           child: _renderIconFeature(
    //             context,
    //             Assets.icons.home.qrCode,
    //             'Mã QR',
    //             () {},
    //           ),
    //         ),
    //         // Expanded(
    //         //   child: _renderIconFeature(
    //         //     context,
    //         //     Assets.icons.scanqr
    //         //         .svg(width: 28.w, height: 28.w, color: colorWhite),
    //         //     'Quét mã',
    //         //     () {},
    //         //   ),
    //         // ),
    //       ],
    //     ),
    //   ),
    // ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(24),
        bottomLeft: Radius.circular(24),
      ),
    ),
  );
}

Widget _renderIconFeature(
  BuildContext context,
  SvgGenImage icon,
  String text,
  VoidCallback onTap,
) {
  return InkWell(
    onTap: onTap,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            // color: context.colorScheme.primary,
          ),
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: icon.svg(
              height: 28.h,
              width: 28.w,
            ),
          ),
        ),
        spaceH6,
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.labelMedium!.copyWith(color: colorBlack),
        ),
      ],
    ),
  );
}
