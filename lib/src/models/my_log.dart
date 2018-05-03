part of mylogger;

class MyLog {
  final int resultId;
  final String goal;
  final String review;
  final DateTime startAt;
  final DateTime endAt;

  MyLog({this.resultId, this.goal, this.review, this.startAt, this.endAt});

  factory MyLog.fromJSON(Map<String, dynamic> data) {
    return new MyLog(
      resultId: data['ResultId'],
      goal: data['Goal'],
      review: data['Review'],
      startAt: DateTime.parse(data['StartAt']),
      endAt: DateTime.parse(data['EndAt']),
    );
  }
}