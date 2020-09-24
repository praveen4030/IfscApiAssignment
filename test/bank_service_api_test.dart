
import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wednesday_assignment/data/ifsc_api_service.dart';
import 'package:wednesday_assignment/model/built_bank.dart';

void main(){
  group('Check bank data testing with IFSC', () {

    IfscApiService service = IfscApiService.create();

    test('get bank details', () async {

      Response<BuiltBank> response = await service.getBank('KARB0000001');
      expect(response.body.city,'DAKSHINA KANNADA');
      expect(response.body.rtgs,false);
    });
    
  });
}