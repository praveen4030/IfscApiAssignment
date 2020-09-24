// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ifsc_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$IfscApiService extends IfscApiService {
  _$IfscApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = IfscApiService;

  @override
  Future<Response<BuiltList<BuiltBank>>> getBanks() {
    final $url = '';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<BuiltBank>, BuiltBank>($request);
  }

  @override
  Future<Response<BuiltBank>> getBank(String id) {
    final $url = '/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltBank, BuiltBank>($request);
  }
}
