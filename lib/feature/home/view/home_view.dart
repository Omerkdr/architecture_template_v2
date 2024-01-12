import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/init/language/locale_keys.g.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/utility/constant/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:architecture_template_v2/feature/home/view/architecture_template_v2/product/init/product_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

part 'widget/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // alt modulden kullanıyosan package gen vermen gerek
          // Assets.icons.icCode.svg(
          //   package: 'gen',
          // ),
          Assets.lottie.animLottie.lottie(
            package: 'gen',
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(AppEnvironmentItems.baseUrl.value),
          ),
          const Text('Change Language'),
          ElevatedButton(
            onPressed: () {
              ProductLocalization.updateLanguage(
                context: context,
                value: Locales.tr,
              );
            },
            child: Text(
              LocaleKeys.general_button_save,
              style: context.general.textTheme.bodySmall,
            ).tr(
              args: ['Omer'],
            ),
          ),
        ],
      ),
    );
  }
}
