import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/dashboard/schemas/gym_banners.graphql.dart';
import 'package:allup_user_app/widgets/shimmer_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardCarouselBannerWidget extends StatelessWidget {
  const DashboardCarouselBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return state.gymBanners.isNotEmpty
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 16 / 10,
                    viewportFraction: 1,
                    autoPlay: false,
                    // onPageChanged: (index, reason) {
                    //   current.value = index;
                    // },

                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true,
                    enlargeFactor: 0,
                  ),
                  items: state.gymBanners
                      .map((e) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: CachedNetworkImage(
                                imageUrl: e!.image,
                                fit: BoxFit.fill,
                                width: double.infinity,
                                placeholder: (context, url) => ShimmerWidget(
                                  height: 200.h,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
