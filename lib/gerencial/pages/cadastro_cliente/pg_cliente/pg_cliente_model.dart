import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gerencial/reutilizaveis/barra_perfil/barra_perfil_widget.dart';
import '/gerencial/reutilizaveis/menu_vertical_esquerdo/menu_vertical_esquerdo_widget.dart';
import '/gerencial/reutilizaveis/pop_up_perfil_user/pop_up_perfil_user_widget.dart';
import 'pg_cliente_widget.dart' show PgClienteWidget;
import 'package:flutter/material.dart';

class PgClienteModel extends FlutterFlowModel<PgClienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuVerticalEsquerdo component.
  late MenuVerticalEsquerdoModel menuVerticalEsquerdoModel;
  // State field(s) for PerfilReg widget.
  bool perfilRegHovered = false;
  // Model for barraPerfil component.
  late BarraPerfilModel barraPerfilModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ClientesRecord> simpleSearchResults = [];
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ClientesRecord>();
  // State field(s) for regPerfilPop widget.
  bool regPerfilPopHovered = false;
  // Model for popUpPerfilUser component.
  late PopUpPerfilUserModel popUpPerfilUserModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuVerticalEsquerdoModel =
        createModel(context, () => MenuVerticalEsquerdoModel());
    barraPerfilModel = createModel(context, () => BarraPerfilModel());
    popUpPerfilUserModel = createModel(context, () => PopUpPerfilUserModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuVerticalEsquerdoModel.dispose();
    barraPerfilModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    popUpPerfilUserModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
