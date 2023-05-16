import 'package:cinemapedia/config/extensions/date_time_extension.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

    ref.read(nowPLayingMoviesProvider.notifier).loadNextPage();
    ref.read(popularMoviesProvider.notifier).loadNextPage();
    ref.read(topRatesMoviesProvider.notifier).loadNextPage();
    ref.read(upcomingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies = ref.watch(nowPLayingMoviesProvider);
    final popularMovies = ref.watch(popularMoviesProvider);
    final topRatesMovies = ref.watch(topRatesMoviesProvider);
    final upcomingMovies = ref.watch(upcomingMoviesProvider);
    final slideshowMovies = ref.watch(moviesSlideshowProvider);

    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Column(
                children: [
                  MoviesSlideshow(movies: slideshowMovies),
                  MovieHorizonalListview(
                    movies: nowPlayingMovies,
                    title: 'En cines',
                    subtitle: DateTime.now().dayAndDate,
                    loadNextPage: () {
                      ref
                          .read(nowPLayingMoviesProvider.notifier)
                          .loadNextPage();
                    },
                  ),
                  MovieHorizonalListview(
                    movies: popularMovies,
                    title: 'Populares',
                    subtitle: DateTime.now().dayAndDate,
                    loadNextPage: () {
                      ref
                          .read(popularMoviesProvider.notifier)
                          .loadNextPage();
                    },
                  ),
                  MovieHorizonalListview(
                    movies: topRatesMovies,
                    title: 'Mejor valorados',
                    subtitle: DateTime.now().dayAndDate,
                    loadNextPage: () {
                      ref
                          .read(topRatesMoviesProvider.notifier)
                          .loadNextPage();
                    },
                  ),
                  MovieHorizonalListview(
                    movies: upcomingMovies,
                    title: 'Próximamente',
                    subtitle: DateTime.now().dayAndDate,
                    loadNextPage: () {
                      ref
                          .read(upcomingMoviesProvider.notifier)
                          .loadNextPage();
                    },
                  ),
                ],
              );
            },
            childCount: 1,

          ),
        ),
      ],
    );
  }
}
