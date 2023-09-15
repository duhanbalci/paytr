import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/common_widgets/avatar.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/features/detail/domain/user/user.dart';
import 'package:paytr_test_case/src/features/detail/presentation/details_kv.dart';

class UserDetail extends ConsumerWidget {
  const UserDetail({
    required this.user,
    super.key,
  });

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH16,
            Center(
              child: Avatar(
                radius: MediaQuery.of(context).size.width / 4,
                photoUrl: user.avatar!,
              ),
            ),
            gapH16,
            DetailKV('Ad', user.firstName),
            DetailKV('Soyad', user.lastName),
            DetailKV('Mahlas', user.username),
            DetailKV('E-posta', user.email),
            DetailKV('Doğum Tarihi', user.dateOfBirth),
          ],
        ),
      ),
    );
  }
}
