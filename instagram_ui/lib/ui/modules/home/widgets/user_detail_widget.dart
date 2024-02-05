import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/ui/modules/auth/login/repository/authentication_repository.dart';

class UserDetailWidget extends StatelessWidget {
  const UserDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
            "https://picsum.photos/200/300",
          ),
        ),
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(100),
        //   child: Image.network(
        //     "https://picsum.photos/200/300",
        //     height: 40,
        //     width: 40,
        //     fit: BoxFit.cover,
        //   ),
        // ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  context.read<AuthenticationRepository>().getUserInfo().email,
                ),
                const SizedBox(width: 12),
                const Icon(
                  Icons.check_circle,
                  size: 16,
                )
              ],
            ),
            const Text(
              "Sponsored",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),

        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
