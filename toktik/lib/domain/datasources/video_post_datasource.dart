import 'package:toktik/domain/entities/video_post.dart';

abstract class IVideoPostDatasource {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);

}
