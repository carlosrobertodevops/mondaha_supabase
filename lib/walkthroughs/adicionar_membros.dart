import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/modals/modal_add_membros/modal_add_membros_widget.dart';

// Focus widget keys for this walkthrough
final button9j4hsjnr = GlobalKey();

/// Adicionar membros
///
/// Para adicionar o membro clique no botão
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: button9j4hsjnr,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const ModalAddMembrosWidget(),
          ),
        ],
      ),
    ];
