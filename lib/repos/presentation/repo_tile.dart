import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../domain/repo.dart';

class RepoTile extends StatelessWidget {
  final Repo repo;

  const RepoTile({
    super.key,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(repo.name),
      subtitle: Text(
        repo.description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Hero(
        tag: repo.fullName,
        child: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(
            repo.owner.avatarUrl,
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.star_border),
          Text(
            repo.stargazersCount.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
