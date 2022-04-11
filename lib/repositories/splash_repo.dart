import 'package:base_knowledge/models/data_splash.dart';

import '_main_repository.dart';

/// createdby Daewu Bintara
/// Monday, 20/12/21 23:27
/// Enjoy coding ☕

class SplashRepo extends MainRepository<DataSplash> {

  @override
  Future<Rsp<DataSplash>> fetch() async {
    await init();
    rs = await call.post("splash");
    await tryParse("splash",() => data = DataSplash.fromJson(rs?.data));
    return super.fetch();
  }

}