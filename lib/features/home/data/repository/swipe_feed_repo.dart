import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shafasrm_app/core/api/base_api_repo.dart';
import 'package:shafasrm_app/features/home/data/source/remote/swipes_feed_remote.dart';
import 'package:shafasrm_app/features/home/models/swipe_feed_model.dart';

class SwipeFeedRepo with BaseApiRepository {
  final SwipeFeedRemote remote;

  SwipeFeedRepo(this.remote);

  Future<Either<DioException, List<SwipeFeedModel>>> getFeed() async {
    final response = getApiResponse<List<SwipeFeedModel>>(
      request: () => remote.getFeed(),
    );
    return response;
  }
}
