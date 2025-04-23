import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/core/providers/dio_provider.dart';
import 'package:shafasrm_app/features/home/data/repository/swipe_feed_repo.dart';
import 'package:shafasrm_app/features/home/data/source/remote/swipes_feed_remote.dart';
import 'package:shafasrm_app/features/home/models/swipe_feed_model.dart';

part 'generated/swipe_feed_provider.g.dart';

@riverpod
SwipeFeedRemote swipeFeedRemote(SwipeFeedRemoteRef ref) {
  final dio = ref.read(baseDioServiceProvider);
  return SwipeFeedRemote(dio);
}

@riverpod
SwipeFeedRepo swipeFeedRepo(SwipeFeedRepoRef ref) {
  final swipeFeedRemote = ref.read(swipeFeedRemoteProvider);
  return SwipeFeedRepo(swipeFeedRemote);
}

@riverpod
class SwipeFeed extends _$SwipeFeed {
  @override
  AsyncValue<List<SwipeFeedModel>> build() {
    return AsyncValue.loading();
  }

  Future<void> fetchFeed() async {
    try {
      final res = await ref.read(swipeFeedRepoProvider).getFeed();
      state = res.fold(
        (e) => AsyncValue.error(e, e.stackTrace),
        (data) => AsyncValue.data(data),
      );
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
