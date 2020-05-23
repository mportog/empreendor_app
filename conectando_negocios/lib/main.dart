import 'package:conectando_negocios/views/pages/analysis_page.dart';
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
            home: AnalysisPage());
  }
}
