import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_cask/collection/bloc/collection_bottle_cubit.dart';
import 'package:one_cask/collection/data/models/bottle.dart';
import 'package:one_cask/collection/widgets/product_card.dart';
import 'package:one_cask/core/router_config.dart';
import 'package:one_cask/core/widgets/custom_app_bar.dart';
import 'package:one_cask/gen/assets.gen.dart';

class MyCollectionTabScreen extends StatefulWidget {
  const MyCollectionTabScreen({super.key});

  @override
  State<MyCollectionTabScreen> createState() => _MyCollectionTabScreenState();
}

class _MyCollectionTabScreenState extends State<MyCollectionTabScreen> {
  void openProductDetail(String index, Bottle bottle) {
    context.push(Routes.BottleDetail.withId(index), extra: bottle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My collection',
        actions: [
          IconButton(
            icon: const Badge(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.notifications_none_outlined),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => CollectionBottlesCubit()..fetchCollectionBottles(),
        child: Scrollbar(
          child: BlocBuilder<CollectionBottlesCubit, List<Bottle>>(builder: (context, collectionBottles) {
            if (collectionBottles.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }
            return CustomScrollView(slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 24.0),
                sliver: SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                    childAspectRatio: 0.5,
                  ),
                  itemBuilder: (context, index) {
                    final collectionBottle = collectionBottles.elementAt(index);
                    return ProductCard(
                      image: Hero(
                        tag: collectionBottle.id,
                        child: collectionBottle.imageUrl != null
                            ? Image.network(collectionBottle.imageUrl!)
                            : Assets.img.bottlePlaceholder.image(),
                      ),
                      title: '${collectionBottle.name} ${collectionBottle.year} ${collectionBottle.number}',
                      subtitle: '(${collectionBottle.quantity})',
                      onTap: () => openProductDetail(collectionBottle.id, collectionBottle),
                    );
                  },
                  itemCount: collectionBottles.length,
                ),
              )
            ]);
          }),
        ),
      ),
    );
  }
}
