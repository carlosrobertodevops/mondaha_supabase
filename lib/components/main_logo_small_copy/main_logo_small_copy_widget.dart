import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_logo_small_copy_model.dart';
export 'main_logo_small_copy_model.dart';

class MainLogoSmallCopyWidget extends StatefulWidget {
  const MainLogoSmallCopyWidget({super.key});

  @override
  State<MainLogoSmallCopyWidget> createState() =>
      _MainLogoSmallCopyWidgetState();
}

class _MainLogoSmallCopyWidgetState extends State<MainLogoSmallCopyWidget> {
  late MainLogoSmallCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoSmallCopyModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Image.asset(
        Theme.of(context).brightness == Brightness.dark
            ? 'assets/images/app_launcher_icon.png'
            : 'assets/images/app_launcher_icon.png',
        width: 170.0,
        height: 100.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
