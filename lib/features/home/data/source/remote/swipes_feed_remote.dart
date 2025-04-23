import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shafasrm_app/features/home/models/swipe_feed_model.dart';

part 'generated/swipes_feed_remote.g.dart';

@RestApi()
abstract class SwipeFeedRemote {
  factory SwipeFeedRemote(Dio dio) = _SwipeFeedRemote;

  @GET("/v1/users/swipes/feed")
  Future<HttpResponse<List<SwipeFeedModel>>> getFeed();
}
