import 'package:architecture_template_v2/product/widget/button/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomLoginButton extends StatefulWidget {
  const CustomLoginButton({required this.onOperation, super.key});
  final AsyncValueGetter<bool> onOperation;

  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

final class _CustomLoginButtonState extends State<CustomLoginButton> {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isLoadingNotifier,
      builder: (BuildContext context, bool value, Widget? child) {
        if (value) return const SizedBox();
        return NormalButton(
          title: 'login',
          onPressed: () async {
            _isLoadingNotifier.value = true;
            final response = await widget.onOperation.call();
            if (response) {
              Navigator.of(context).pop();
            }
            Future.delayed(const Duration(seconds: 2), () {
              _isLoadingNotifier.value = false;
            });
          },
        );
      },
    );
  }
}
