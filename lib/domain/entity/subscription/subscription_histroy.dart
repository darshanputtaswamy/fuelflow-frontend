import 'package:boilerplate/domain/entity/subscription/subscription.dart';

class SubscrptionHistory {
  final List<Subscription>? posts;

  SubscrptionHistory({
    this.posts,
  });

  factory SubscrptionHistory.fromJson(List<dynamic> json) {
    List<Subscription> posts = <Subscription>[];
    posts = json.map((post) => Subscription.fromMap(post)).toList();

    return SubscrptionHistory(
      posts: posts,
    );
  }
}
