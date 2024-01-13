import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
// import 'package:architecture_template_v2/feature/home/view/architecture_template_v2/product/init/product_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/widgets.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
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
          AdaptAllView(
            phone: Text(
              ''.ext.version,
              style: context.general.textTheme.bodyLarge,
            ),
            tablet: Text(''.ext.version),
            desktop: Text(''.ext.version),
          ),

          // Expanded(child: Image.network(''.ext.randomImage)),
          Text(
            'omer',
            style: context.general.textTheme.titleLarge?.copyWith(
              color: 'FFF0001'.ext.color,
            ),
          ),
          SizedBox(
            height: context.sized.dynamicHeight(0.4),
          ),
          // Future<String>().ext.toBuild(
          //       onSuccess: onSuccess,
          //       loadingWidget: loadingWidget,
          //       notFoundWidget: notFoundWidget,
          //       onError: onError,
          //     ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                'Vakfıkebir'.ext.launchMaps();
                CustomLinkPreview.getLinkPreviewData(
                  'https://apusteknoloji.com/',
                );
              },
              child: const Icon(Icons.add),
            ),
          ),
          const CustomNetworkImage(
            imageUrl: 'https://picsum.photos/200/300',
            size: Size(100, 100),
          ),
          Assets.lottie.animLottie.lottie(
            package: 'gen',
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text(AppEnvironmentItems.baseUrl.value),
          // ),
          // const Text('Change Language'),
          // ElevatedButton(
          //   onPressed: () async {
          //     // ProductLocalization.updateLanguage(
          //     //   context: context,
          //     //   value: Locales.tr,
          //     // );
          //     // ignore: unused_local_variable
          //     final response =
          //         await context.router.push<bool>(HomeDetailRoute(id: '1'));
          //   },
          //   child: Text(
          //     LocaleKeys.general_button_save,
          //     style: context.general.textTheme.bodySmall,
          //   ).tr(
          //     args: ['Omer'],
          //   ),
          // ),
        ],
      ),
    );
  }
}
