/// App 에서 사용하는 Router 를 Version 별로 정의합니다.
class AppRouter {
  const AppRouter._();

  static const AppRouter _instance = AppRouter._();

  factory AppRouter() {
    return _instance;
  }

  static const AppRouterConfigure root = AppRouterConfigure(name: 'root', path: '/', routerPath: '/');
  static const AppRouterVersion1 v1 = AppRouterVersion1(versionName: 'v1');
  static const AppRouterVersion2 v2 = AppRouterVersion2(versionName: 'v2');
  static const AppRouterVersion3 v3 = AppRouterVersion3(versionName: 'v3');
}

/// App 에서 사용하는 Router 를 정의하는 모델 <br>
/// [name] : Router 의 이름 <br>
/// [path] : Router 의 절대 경로 <br>
/// [routerPath] : router_config 에서 사용하기 위한 경로 <br>
class AppRouterConfigure {
  final String name;
  final String path;
  final String routerPath;

  const AppRouterConfigure({
    required this.name,
    required this.path,
    required this.routerPath,
  });

  /// Route 를 생성.
  factory AppRouterConfigure.create({required String name, String? path, String? routerPath}) {
    return AppRouterConfigure(name: name, path: path ?? '/$name', routerPath: routerPath ?? name);
  }
}

/// Version 1 Router 를 정의.
class AppRouterVersion1 implements AppRouterConfigure {
  const AppRouterVersion1({required this.versionName});

  final String versionName;

  @override
  String get name => versionName;

  @override
  String get path => '/$versionName';

  @override
  String get routerPath => versionName;

  AppRouterConfigure get home => AppRouterConfigure.create(name: 'home');
}

/// Version 2 Router 를 정의.
class AppRouterVersion2 implements AppRouterConfigure {
  const AppRouterVersion2({required this.versionName});

  final String versionName;

  @override
  String get name => versionName;

  @override
  String get path => '/$versionName';

  @override
  String get routerPath => versionName;

  AppRouterConfigure get home => AppRouterConfigure.create(name: 'home');
}

/// Version 3 Router 를 정의.
class AppRouterVersion3 implements AppRouterConfigure {
  const AppRouterVersion3({required this.versionName});

  final String versionName;

  @override
  String get name => versionName;

  @override
  String get path => '/$versionName';

  @override
  String get routerPath => versionName;

  AppRouterConfigure get home => AppRouterConfigure.create(name: 'home');
}
