import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/presentation/gaps.dart';
import '../../core/shared/extensions.dart';
import '../../repos/domain/repo.dart';

@RoutePage()
class RepoDetailsPage extends StatelessWidget {
  final Repo repo;

  const RepoDetailsPage({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(
              tag: repo.fullName,
              child: CircleAvatar(
                radius: 16,
                backgroundImage: CachedNetworkImageProvider(
                  repo.owner.avatarUrl,
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(child: Text(repo.owner.name)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              repo.name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            8.vGap,
            RichText(
                text: TextSpan(
              text: repo.updatedAt.format(),
              style: Theme.of(context).textTheme.bodyLarge,
              children: [
                TextSpan(
                  text: " last updated",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.grey),
                )
              ],
            )),
            16.vGap,
            Row(
              children: [
                const Icon(Icons.star_border),
                4.hGap,
                Text(repo.stargazersCount.toString(),
                    style: Theme.of(context).textTheme.bodyLarge),
                4.hGap,
                Text(
                  "stars",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              ],
            ),
            32.vGap,
            Text(
              "Description",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            16.vGap,
            Text(
              repo.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
