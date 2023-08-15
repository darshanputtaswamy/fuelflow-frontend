import 'package:fuelflow/data/di/data_layer_injection.dart';
import 'package:fuelflow/domain/di/domain_layer_injection.dart';
import 'package:fuelflow/presentation/di/presentation_layer_injection.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

mixin ServiceLocator {
  static Future<void> configureDependencies() async {
    await DataLayerInjection.configureDataLayerInjection();
    await DomainLayerInjection.configureDomainLayerInjection();
    await PresentationLayerInjection.configurePresentationLayerInjection();
  }
}
