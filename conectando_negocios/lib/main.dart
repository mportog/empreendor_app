import 'package:conectando_negocios/views/pages/analysis_page.dart';
import 'package:conectando_negocios/views/pages/cadastro/addres_page.dart';
import 'package:conectando_negocios/views/pages/cadastro/bussines_idea_page.dart';
import 'package:conectando_negocios/views/pages/cadastro/form_cadastro_page.dart';
import 'package:conectando_negocios/views/pages/cadastro/photo_id_page.dart';
import 'package:conectando_negocios/views/pages/cadastro/revenue_page.dart';
import 'package:conectando_negocios/views/pages/cadastro/type_cadastro_page.dart';
import 'package:conectando_negocios/views/pages/connect_plan_page.dart';
import 'package:conectando_negocios/views/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EmpreendedorConecta());
}

class EmpreendedorConecta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        //   providers: [
        // Provider<LoginStore>(create: (_) => LoginStore()),
        //   ],
        //   child:
        MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Empreendedor Conecta',
            theme: ThemeData(primarySwatch: Colors.indigo),
            // home: LoginPage()
            // home: TypeCadastroPage()
            // home: FormCadastroPage()
            // home: PhotoIdPage()
            // home: AddressPage()
            // home: RevenuePage()
            // home: AnalysisPage()
            // home: BusinessPage()
            home: ConnectPlanPage());
  }
}
