### Installation

```console
git clone https://github.com/shinich39/react-native-module-template.git && cd react-native-module-template && npm install && npm run unlink && npm uninstall mkdirp rimraf
```

```js
// package.json
{
	// change module name
	"name": "my-module"
	// include module while "npm pack"
	"bundleDependencies": [
		"path",
		"moment"
	]
}
```

### Prepare

```js
// android\src\main\AndroidManifest.xml

// change "com.rn.mymodule"
package="com.rn.mymodule" >
```

```js
// android\src\main\java\com\rn\mymodule\MyModule.kt

// change package name
package com.rn.mymodule

// change MyModule
class MyModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

// change "MyModule"
override fun getName() = "MyModule"
```

```js
// android\src\main\java\com\rn\mymodule\MyPackage.kt

// change package name
package com.rn.mymodule

// change MyPackage
class MyPackage : ReactPackage {

// change MyModule
): MutableList<NativeModule> = listOf(MyModule(reactContext)).toMutableList()
```

```js
// change dir name
// android\src\main\java\com\rn\mymodule 
```

```js
// ios\MyModule.swift

// change MyModule
@objc(MyModule)

// change MyModule
class MyModule: NSObject {

// change MyModule
func getName() -> String {
  return "MyModule"
}
```

```js
// ios\MyModule.m

// change MyModule
@interface RCT_EXTERN_MODULE(MyModule, NSObject)
```

### Packaging

```console
npm pack
```

### Install

```console
npm install react-native-module-template-1.0.0.tgz
```

```js
import MyModule from 'react-native-module-template';

const {getName, multiply} = MyModule;

getName(); // "MyModule"
await multiply(1, 2); // 2
```