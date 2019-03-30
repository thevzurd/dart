class Example {
   Example factory Example(String _name){
    if(_cache.containsKey(_name)){
      return _cache[_name];
    } else {
      final Example _instance = Example._internal(_name);
      _cache[_name] = _instance;
      return _instance;
    }
  } 

  // Setup for factory constructor
  Example._internal(this.name);
  final String name;
   static final Map<String, Example> _cache =
      <String, Example>{};
}

final Example example = Example('OnlyInstance');