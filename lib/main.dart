import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';
import 'package:wednesday_assignment/data/ifsc_api_service.dart';
import 'package:wednesday_assignment/injection.dart';
import 'package:wednesday_assignment/presentation/ui/home_page.dart';
import 'package:auto_route/auto_route.dart' as extend;
import 'presentation/routes/route.gr.dart' as route;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  _setUpLogging();
  runApp(MyApp());
}

void _setUpLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name} : ${rec.time} : ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create : (context) => getIt<IfscApiService>(),
      dispose: (_, IfscApiService service) => service.client.dispose(),
      child: MaterialApp(
          builder: extend.ExtendedNavigator(
            router: route.Router(),
          ),        debugShowCheckedModeBanner: false,
        title: 'Wednesday',
        home: HomePage(),
      ),
    );
  }
}
