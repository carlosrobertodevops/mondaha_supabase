import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tool_tip_help_model.dart';
export 'tool_tip_help_model.dart';

class ToolTipHelpWidget extends StatefulWidget {
  const ToolTipHelpWidget({super.key});

  @override
  State<ToolTipHelpWidget> createState() => _ToolTipHelpWidgetState();
}

class _ToolTipHelpWidgetState extends State<ToolTipHelpWidget> {
  late ToolTipHelpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToolTipHelpModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisSize: MainAxisSize.max,
      children: [
        AlignedTooltip(
          content: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'qsa63jz1' /*  */,
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).info,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodySmallFamily),
                  ),
            ),
          ),
          offset: 4.0,
          preferredDirection: AxisDirection.up,
          borderRadius: BorderRadius.circular(8.0),
          backgroundColor: FlutterFlowTheme.of(context).background,
          elevation: 4.0,
          tailBaseWidth: 24.0,
          tailLength: 12.0,
          waitDuration: const Duration(milliseconds: 10),
          showDuration: const Duration(milliseconds: 100),
          triggerMode: TooltipTriggerMode.tap,
          child: Icon(
            Icons.help_outline_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 12.0,
          ),
        ),
      ],
    );
  }
}
