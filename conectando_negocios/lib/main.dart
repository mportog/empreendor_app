import 'package:conectando_negocios/controllers/login_store.dart';
import 'package:conectando_negocios/views/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(EmpreendedorConecta());
}

class EmpreendedorConecta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<LoginStore>(create: (_) => LoginStore()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Empreendedor Conecta',
            theme: ThemeData(primarySwatch: Colors.indigo),
            home: LoginPage()
            // home: TypeCadastroPage()
            // home: FormCadastroPage()
            // home: PhotoIdPage()
            // home: AddressPage()
            // home: RevenuePage()
            // home: AnalysisPage()
            // home: BusinessPage()
            // home: ConnectPlanPage()
            ));
  }
}
