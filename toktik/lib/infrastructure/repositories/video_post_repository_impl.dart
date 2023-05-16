import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements IVideoPostRepository {
  final IVideoPostDatasource videoPostDatasource;

  VideoPostRepositoryImpl({
    required this.videoPostDatasource,
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) =>
      videoPostDatasource.getTrendingVideosByPage(page);
}
