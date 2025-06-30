import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api.dart';
import '../usermodel.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

final userListProvider = FutureProvider<List<UserModel>>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.fetchUsers();
});
