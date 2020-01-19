import 'package:fluro/fluro.dart';
import 'package:fluro_localization/common/route/handler/route_handlers.dart' as h;

class Routes {
  static void configureRoutes(Router router) {
    print('[Debug] Routes.configureRoutes');
    // home
    router.define("/",
      handler: h.homeHandler,
      transitionType: TransitionType.material);

    // demo
    router.define("/demo/:id",
      handler: h.demoHandler,
      transitionType: TransitionType.material);

    // leaf
    router.define("/leaf/:id",
        handler: h.leafHandler,
        transitionType: TransitionType.material);

    // default
    router.notFoundHandler = h.defaultHandler;
  }
}