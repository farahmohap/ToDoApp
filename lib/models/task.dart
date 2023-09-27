class Task {
  final String name;
  bool isDone;
  bool anim;

  Task({ this.anim=false,
    required this.name,
    this.isDone = false,
  });

  void doneChange() {
    isDone = !isDone;
  }
}
