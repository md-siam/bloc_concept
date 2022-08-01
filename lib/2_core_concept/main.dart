// ignore_for_file: avoid_print

Stream<int> boatStream() async* {
  for (int i = 1; i <= 10; i++) {
    print('SENT boat no. $i');
    await Future.delayed(const Duration(seconds: 2));

    /// yield `PUSHES` the boat through the stream river
    yield i;
  }
}

void main(List<String> args) async {
  Stream<int> stream = boatStream();

  stream.listen((receivedData) {
    print("RECEIVED boat no. $receivedData");
  });
}
