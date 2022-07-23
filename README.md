# Base Flutter App
*last update 19 Jul 2022*
Flutter App Base App.

## Architecture of folders
**```base```**
base folder as the place for all the most basic logic classes. where the class will be used repeatedly and possibly as an extensible class. for now the contents of the base folder are API class, configuration class and information class.


**```blocs```**
blocs is the state management that we choose to build the application. which in this blocs folder will contain the blocs of each built widget. Everything is explained at  [Bloc Documentation](https://bloclibrary.dev/#/gettingstarted)


**```models```**
the models folder is useful for storing all forms of data objects that we will use, whether it's to accommodate from json or from the logic we create.


**```repositories```**
repository is a folder that is used for the process of getting data, it can be from an API or something else. If the data is obtained from the API the format used is as contained in the documentation on _main_repository.dart.

**example :**
```
class SplashRepo extends MainRepository<DataSplash> {  
  
  @override  
  Future<Rsp<DataSplash>> fetch() async {  
     await init();  
	 rs = await call.post("splash");  
	 await tryParse("splash",() => data = DataSplash.fromJson(rs?.data));  
	 return super.fetch();  
  }  
  
}
```


**```routers```**
routers folder as routing navigation between created pages, as well as Provider binding if needed. In this folder there are 2 classes, namely the Pages class as route generate and RouterName class as route alias.


**```screens```**
The screens folder represents the pages or activities available in the application. Which page will be aliased in the RouterName class.


