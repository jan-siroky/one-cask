import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_cask/collection/data/models/bottle.dart';
import 'package:one_cask/collection/widgets/history_card.dart';
import 'package:one_cask/core/enums.dart';
import 'package:one_cask/core/theme.dart';
import 'package:one_cask/core/widgets/custom_app_bar.dart';
import 'package:one_cask/core/widgets/gap.dart';
import 'package:one_cask/gen/assets.gen.dart';

class BottleDetailScreen extends StatefulWidget {
  const BottleDetailScreen({super.key, required this.id, required this.data});

  final String id;
  final Bottle data;

  @override
  State<BottleDetailScreen> createState() => _BottleDetailScreenState();
}

class _BottleDetailScreenState extends State<BottleDetailScreen> {
  BottleDetailSection _selectedSection = BottleDetailSection.Details;

  Bottle get bottle => widget.data;

  Widget _buildDetails() {
    return Column(
        children: (bottle.details ?? [])
            .map(
              (detail) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text(detail.title),
                    Expanded(
                      child: Text(
                        detail.description,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList());
  }

  Widget _buildTastingNotes(TastingNotes? tastingNotes) {
    if (tastingNotes == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // TODO: implement video player
        if (tastingNotes.videoUrl != null)
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Container(
              color: darkGreyColor,
              child: const Icon(
                Icons.play_arrow,
                size: 24.0,
              ),
            ),
          ),
        Gap.s16,
        Text(
          tastingNotes.author == null ? 'Your notes' : 'Tasting notes',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        if (tastingNotes.author != null) Text('by ${tastingNotes.author}'),
        Gap.s8,
        ...tastingNotes.notes.map(
          (note) => Container(
            color: backgroundColor,
            margin: const EdgeInsets.only(bottom: 8.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Gap.s4,
                  Text(
                    note.description,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHistory() {
    return Column(
        children: (bottle.history ?? [])
            .indexed
            .map((history) => TimelineCard(
                  index: history.$1 + 1,
                  label: history.$2.label,
                  title: history.$2.title,
                  description: history.$2.description,
                  attachments: history.$2.attachments,
                ))
            .toList());
  }

  void addToMyCollection() {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    const Duration animationDuration = Duration(milliseconds: 500);
    double bottleHeight = MediaQuery.sizeOf(context).height * 0.5;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar.secondary(
        title: bottle.collection,
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundColor: darkGreyColor,
              child: Icon(
                Icons.close_outlined,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              context.pop();
            },
          ),
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: kToolbarHeight + MediaQuery.of(context).padding.top + 16.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.img.screenBackground.provider(),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 2.0, 4.0, 2.0),
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  color: darkGreyColor,
                  child: Row(
                    children: [
                      Assets.img.icons.genuine.image(width: 24.0),
                      Gap.s8,
                      Expanded(
                        child: Text(
                          'Genuine Bottle (Unopened)',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                        icon: const RotatedBox(quarterTurns: 1, child: Icon(Icons.arrow_forward_ios_sharp)),
                        color: primaryColor,
                        onPressed: () {},
                        visualDensity: VisualDensity.compact,
                      ),
                    ],
                  ),
                ),
                Hero(
                  tag: widget.id,
                  child: bottle.imageUrl != null
                      ? Image.network(bottle.imageUrl!, height: bottleHeight)
                      : Assets.img.bottlePlaceholder.image(height: bottleHeight),
                ),
                Gap.s16,
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Bottle ${bottle.quantity}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: bottle.name,
                                  style: Theme.of(context).textTheme.headlineMedium,
                                ),
                                TextSpan(
                                  text: ' ${bottle.currentAge}',
                                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: primaryColor),
                                ),
                                TextSpan(
                                  text: '\n${bottle.number}',
                                  style: Theme.of(context).textTheme.headlineMedium,
                                ),
                              ],
                            ),
                          ),
                          Gap.s16,
                          DefaultTextStyle(
                            style: const TextStyle(fontSize: 12.0),
                            child: CupertinoSlidingSegmentedControl(
                              children: {
                                BottleDetailSection.Details: Text(
                                  BottleDetailSection.Details.label,
                                  style: TextStyle(
                                    color: BottleDetailSection.Details == _selectedSection
                                        ? darkGreyColor
                                        : unselectedItemColor,
                                  ),
                                ),
                                BottleDetailSection.TastingNotes: Text(
                                  BottleDetailSection.TastingNotes.label,
                                  style: TextStyle(
                                    color: BottleDetailSection.TastingNotes == _selectedSection
                                        ? darkGreyColor
                                        : unselectedItemColor,
                                  ),
                                ),
                                BottleDetailSection.History: Text(
                                  BottleDetailSection.History.label,
                                  style: TextStyle(
                                    color: BottleDetailSection.History == _selectedSection
                                        ? darkGreyColor
                                        : unselectedItemColor,
                                  ),
                                ),
                              },
                              groupValue: _selectedSection,
                              backgroundColor: backgroundColor,
                              thumbColor: primaryColor,
                              onValueChanged: (value) {
                                if (value != null) {
                                  setState(() {
                                    _selectedSection = value;
                                  });
                                }
                              },
                            ),
                          ),
                          Gap.s16,
                          AnimatedSizeAndFade(
                            fadeDuration: animationDuration,
                            sizeDuration: animationDuration,
                            child: () {
                              if (_selectedSection == BottleDetailSection.Details) return _buildDetails();
                              if (_selectedSection == BottleDetailSection.TastingNotes) {
                                return Column(
                                  children: [
                                    _buildTastingNotes(bottle.tastingNotes),
                                    _buildTastingNotes(bottle.yourNotes),
                                  ],
                                );
                              }
                              if (_selectedSection == BottleDetailSection.History) return _buildHistory();
                            }(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Gap.s32,
                FilledButton.icon(
                  onPressed: addToMyCollection,
                  icon: const Icon(Icons.add),
                  label: const Text('Add to my collection'),
                ),
                Gap.s64,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
