class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'General checkup', isDone: true),
      ToDo(id: '02', todoText: 'Water wash', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Oil change',
      ),
      ToDo(
        id: '04',
        todoText: 'Bumper',
      ),
      ToDo(
        id: '05',
        todoText: 'Head lamps',
      ),
      ToDo(
        id: '06',
        todoText: 'Wheels',
      ),
    ];
  }
}
