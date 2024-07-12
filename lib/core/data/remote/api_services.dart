import 'dart:developer';

import 'package:dio/dio.dart';

import '../models/image_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<ImageModel>> getImages() async {
    try {
      final response = await _dio.get(
        'https://api.pexels.com/v1/curated?per_page=50',
        options: Options(
          headers: {
            'Authorization':
                '59O8vELQsQlXBPUopp4jqd1KjRTszXl6l1jMHujPz72JQH8OH6DiFYPu',
          },
        ),
      );

      if (response.statusCode == 200) {
        final responseData = response.data as Map<String, dynamic>;
        final photosJson = responseData['photos'] as List<dynamic>;

        List<ImageModel> photos =
            photosJson.map((json) => ImageModel.fromJson(json)).toList();
        photos.sort((a, b) => a.photographer.compareTo(b.photographer));

        return photos;
      } else {
        log('Запит не вдався з кодом статусу: ${response.statusCode}');
      }
    } catch (e) {
      log('Помилка при виконанні запиту: $e');
    }
    return [];
  }

  Future<bool> registerUser({
    required String email,
    required String password,
  }) async {
    try {
      var url = ApiConstants.baseUrl;
      getImages();
      var body = {
        'email': email,
        'password': password,
      };

      var response = await _dio.get(
        url,
        data: body,
      );

      // log(response.data.toString());

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to register user: $e');
    }
  }

  // Future<bool> authUser({required String phone}) async {
  //   try {
  //     var url = '${ApiConstants.baseUrl}/login.php';

  //     var body = {
  //       'secretkey': ApiConstants.secretKey,
  //       'phone': phone,
  //     };

  //     var response = await _dio.post(
  //       url,
  //       data: FormData.fromMap(body),
  //     );

  //     if (response.statusCode == 200) {
  //       if (response.data.toString().contains('false')) {
  //         return false;
  //       } else {
  //         userModelFromJson(response.data);
  //         return true;
  //       }
  //     } else {
  //       throw Exception('Failed to authenticate user: ${response.data}');
  //     }
  //   } catch (e) {
  //     throw Exception('Failed to authenticate user: $e');
  //   }
  // }

  // Future<UserModel?> updateUser({required UserModel updateUser}) async {
  //   try {
  //     var url = '${ApiConstants.baseUrl}/update.php';

  //     var body = {
  //       'secretkey': ApiConstants.secretKey,
  //       'user_uid': updateUser.userUid,
  //       'firstname': updateUser.firstName,
  //       'lastname': updateUser.lastName,
  //       'phone': updateUser.phone,
  //       'avatar_url': updateUser.imageUrl,
  //     };

  //     var response = await _dio.post(
  //       url,
  //       data: FormData.fromMap(body),
  //     );

  //     if (response.statusCode == 200) {
  //       UserModel model = userModelFromJson(response.data);
  //       return model;
  //     } else {
  //       throw Exception('Failed to update user: ${response.data}');
  //     }
  //   } catch (e) {
  //     log(e.toString());
  //     throw Exception('Failed to update user: $e');
  //   }
  // }

  // Future<String?> sendCode({
  //   required String phone,
  //   required String code,
  // }) async {
  //   try {
  //     var url = '${ApiConstants.baseUrl}/sendcode.php';

  //     var body = {
  //       'secretkey': ApiConstants.secretKey,
  //       'phone': phone,
  //       'code': code,
  //     };

  //     var response = await _dio.post(
  //       url,
  //       data: FormData.fromMap(body),
  //     );

  //     log(response.data.toString());

  //     if (response.statusCode == 200) {
  //       return response.data.toString();
  //     } else {
  //       throw Exception('Failed to send code: ${response.data}');
  //     }
  //   } catch (e) {
  //     log(e.toString());
  //     throw Exception('Failed to send code: $e');
  //   }
  // }

  // Future<UserModel?> getUser({required String phone}) async {
  //   try {
  //     var url = '${ApiConstants.baseUrl}/getuser.php';

  //     var body = {
  //       'secretkey': ApiConstants.secretKey,
  //       'phone': phone,
  //     };

  //     var response = await _dio.post(
  //       url,
  //       data: FormData.fromMap(body),
  //     );

  //     log(response.data.toString());

  //     if (response.statusCode == 200) {
  //       if (response.data.toString().contains('false')) {
  //         return null;
  //       } else {
  //         UserModel res = userModelFromJson(response.data);
  //         return res;
  //       }
  //     } else {
  //       throw Exception('Failed to get user: ${response.data}');
  //     }
  //   } catch (e) {
  //     log(e.toString());
  //     throw Exception('Failed to get user: $e');
  //   }
  // }

  // Future<List<RecordsModel>> getRecords({required String phone}) async {
  //   try {
  //     var url =
  //         '${ApiConstants.baseUrl}/getrecords.php?secretkey=${ApiConstants.secretKey}&phone=$phone';

  //     var response = await _dio.get(
  //       url,
  //     );

  //     if (response.statusCode == 200) {
  //       if (response.data.toString().contains('false')) {
  //         return [];
  //       } else {
  //         List<RecordsModel> res = recordsModelListFromJson(response.data);
  //         return res;
  //       }
  //     } else {
  //       throw Exception('Failed to get records: ${response.data}');
  //     }
  //   } catch (e) {
  //     log(e.toString());
  //     throw Exception('Failed to get records: $e');
  //   }
  // }
}

class ApiConstants {
  static String baseUrl = 'https://randomuser.me/api/';
}
