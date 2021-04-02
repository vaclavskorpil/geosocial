import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkService {
  Future<bool> isConnected;
}

@LazySingleton(as: NetworkService)
class NetworkServiceImpl extends NetworkService {
  @override
  Future<bool> get isConnected async {
    final result = await Connectivity().checkConnectivity();
    return result != ConnectivityResult.none;
  }
}
