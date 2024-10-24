import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'main_logo_bar_model.dart';
export 'main_logo_bar_model.dart';

class MainLogoBarWidget extends StatefulWidget {
  const MainLogoBarWidget({super.key});

  @override
  State<MainLogoBarWidget> createState() => _MainLogoBarWidgetState();
}

class _MainLogoBarWidgetState extends State<MainLogoBarWidget> {
  late MainLogoBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Image.asset(
        Theme.of(context).brightness == Brightness.dark
            ? 'assets/images/app_launcher_icon.png'
            : 'assets/images/app_launcher_icon.png',
        width: 100.0,
        height: 100.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
