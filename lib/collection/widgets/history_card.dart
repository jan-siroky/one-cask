import 'dart:math';

import 'package:flutter/material.dart';
import 'package:one_cask/core/theme.dart';
import 'package:one_cask/core/widgets/gap.dart';
import 'package:one_cask/gen/assets.gen.dart';

class TimelineCard extends StatelessWidget {
  final String label;
  final String title;
  final String description;
  final List<String> attachments;
  final int index;

  const TimelineCard({
    super.key,
    required this.label,
    required this.title,
    required this.description,
    required this.attachments,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.img.icons.timelineCardLine.provider(),
                ),
              ),
              child: CircleAvatar(backgroundColor: textColor, child: Text(index.toString())),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 8.0),
                  if (attachments.isNotEmpty)
                    Container(
                      color: darkGreyColor,
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Transform.rotate(
                                angle: pi / 4,
                                child: const Icon(
                                  Icons.attach_file_outlined,
                                  size: 16.0,
                                ),
                              ),
                              Gap.s4,
                              Text(
                                'Attachments',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: attachments
                                .map(
                                  (attachment) => Container(
                                    margin: const EdgeInsets.only(top: 6.0, right: 8.0),
                                    width: 64.0,
                                    height: 64.0,
                                    color: textColor,
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
