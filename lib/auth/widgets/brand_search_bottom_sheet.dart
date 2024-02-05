import 'package:allup_user_app/auth/schemas/brand_list.graphql.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/theme/c_theme.dart';
import 'package:allup_user_app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> showBrandModalSheet(
  BuildContext context, {
  required List<Query$BrandsList$brandList$list$gyms?> brands,
  required void Function(Query$BrandsList$brandList$list$gyms?) onSelected,
}) async {
  await showModalBottomSheet(
      elevation: 0,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      isScrollControlled: true,
      context: context,
      useSafeArea: true,
      builder: (_) {
        return SafeArea(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                )),
            margin: const EdgeInsets.all(20),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.7,
            ),
            child:
                BrandAdminBottomSheet(onSelected: onSelected, brands: brands),
          ),
        );
      });
}

class BrandAdminBottomSheet extends StatefulWidget {
  const BrandAdminBottomSheet(
      {required this.onSelected, required this.brands, super.key});
  final List<Query$BrandsList$brandList$list$gyms?> brands;
  final void Function(Query$BrandsList$brandList$list$gyms) onSelected;

  @override
  State<BrandAdminBottomSheet> createState() => _ClientSearchSingleLeadState();
}

class _ClientSearchSingleLeadState extends State<BrandAdminBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w, bottom: 10.h),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                context.l10n.brandBottomSheetTitle.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp),
              ),
              const Spacer(),
              SizedBox(
                width: 40.w,
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: ListView.separated(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20.h, bottom: 20.h),
              separatorBuilder: (context, index) => Divider(
                    height: 20.h,
                    thickness: 0.5,
                    color: Theme.of(context).dividerColor,
                  ),
              shrinkWrap: true,
              itemCount: widget.brands.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    widget.onSelected(widget.brands[index]!);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      widget.brands[index]!.name,
                      style: AppTextStyle.rubikStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
