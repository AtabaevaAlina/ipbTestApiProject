# ipbTestApiProjectApp
## Сontents
1.	ipbTestApiProjectApp
2.	ContentView
3.	ViewModel
4.	ConstantData

### ipbTestApiProjectApp
In this file, you need to load custom fonts, before displaying view

```swift
 init() {
        Appearance.configurePackageUI()
      }
```

### ContentView
Displaying our view from package BonusBarView 

```swift
struct ContentView: View {
   @StateObject var model = ViewModel()
    
    var body: some View {
        BonusBarView(info: $model.info)
    }
}
```

### ViewModel
We create `@Published var info:GeneralInfo = GeneralInfo()` in this file for work with package APIiProBonus and send this object in view from BonusBarView

```swift
init() {
        APIiProBonus.getClientInfo(ClientID: ConstantData.ClientID, DeviceID: ConstantData.DeviceID, completion: { data in
            self.info = data
        })
    }
```

### ConstantData
We store constant client data app `ClientID, DeviceID`
