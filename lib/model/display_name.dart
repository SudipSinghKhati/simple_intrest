class DisplayName {
  final List<String> _nameList = ['sudip', 'sanjiv', 'Krishna'];

  int _index = 0;

  String nextName() {
    String name = _nameList[_index];

    _index = _index == _nameList.length - 1 ? 0 : _index + 1;

    return name;
  }
}