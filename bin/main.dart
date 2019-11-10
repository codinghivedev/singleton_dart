
main() {

  SingletonWithFactoryConstructor singletonWithFactoryConstructor=SingletonWithFactoryConstructor();
  singletonWithFactoryConstructor.doSomething();

  SingletonWithGetter singletonWithGetter=SingletonWithGetter.instance;
  singletonWithGetter.doSomething();

  SingletonWithPublicStaticField singletonWithPublicStaticField=SingletonWithPublicStaticField.instance;
  singletonWithPublicStaticField.doSomething();

}

//Using static private field with Factory constructor
class SingletonWithFactoryConstructor {

  SingletonWithFactoryConstructor._privateConstructor();

  static final SingletonWithFactoryConstructor _instance = SingletonWithFactoryConstructor._privateConstructor();

  factory SingletonWithFactoryConstructor(){
    return _instance;
  }

  void doSomething(){
    print('doSomething in SingletonWithFactoryConstructor');
  }
}

//Using static private field with getter
class SingletonWithGetter {

  SingletonWithGetter._privateConstructor();

  static final SingletonWithGetter _instance = SingletonWithGetter._privateConstructor();

  static SingletonWithGetter get instance { return _instance;}

  void doSomething(){
    print('doSomething in SingletonWithGetter');
  }
}

//Using static public field
class SingletonWithPublicStaticField {

  SingletonWithPublicStaticField._privateConstructor();

  static final SingletonWithPublicStaticField instance = SingletonWithPublicStaticField._privateConstructor();

  void doSomething(){
    print('doSomething in SingletonWithPublicStaticField');
  }
}