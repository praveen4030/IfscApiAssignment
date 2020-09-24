import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:wednesday_assignment/data/built_value_convert.dart';
import 'package:wednesday_assignment/model/built_bank.dart';
import 'package:built_collection/built_collection.dart';

part 'ifsc_api_service.chopper.dart';

@injectable
@ChopperApi()
abstract class IfscApiService extends ChopperService {

  @Get()
  Future<Response<BuiltList<BuiltBank>>> getBanks();

  @Get(path: '/{ifsc}')
  Future<Response<BuiltBank>> getBank(@Path('ifsc') String id,);

  @factoryMethod
  static IfscApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://ifsc.razorpay.com',
      services: [
        _$IfscApiService(),
      ],
      converter: BuiltValueConvert(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );

    return _$IfscApiService(client);
  }
}
