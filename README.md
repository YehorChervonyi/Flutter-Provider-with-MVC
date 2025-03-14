## 📌 Flutter Provider + MVC Example

A simple Flutter application demonstrating **state management using Provider** while following the **MVC (Model-View-Controller) architecture**.

### 🎯 **Features**

✅ State management with **Provider**  
✅ **MVC architecture** for better code organization  
✅ Simple **increment & decrement counter** example  
✅ Beginner-friendly and scalable

----------

## 📂 **Project Structure**

```
/lib
  ├── main.dart                 # App entry point
  ├── models
  │     ├── counter_model.dart   # Defines the data model
  ├── views
  │     ├── home_view.dart       # UI of the app
  ├── controllers
  │     ├── counter_controller.dart # Handles logic between UI & state
  ├── providers
  │     ├── counter_provider.dart   # Manages state and notifies UI

```

----------

## 🚀 **Getting Started**

### **1️⃣ Clone the repository**

```sh
git clone https://github.com/YehorChervonyi/Flutter-Provider-with-MVC
cd Flutter-Provider-with-MVC

```

### **2️⃣ Install dependencies**

```sh
flutter pub get

```

### **3️⃣ Run the app**

```sh
flutter run

```

----------

## 🏗 **How It Works?**

### 📌 **Model (`CounterModel`)**

Defines the data structure for the counter.

```dart
class CounterModel {
  int count;
  CounterModel({this.count = 0});
}

```

### 📌 **Provider (`CounterProvider`)**

Manages state and notifies the UI when data changes.

```dart
class CounterProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

```

### 📌 **Controller (`CounterController`)**

Acts as a bridge between UI and state.

```dart
class CounterController {
  void incrementCounter(BuildContext context) {
    Provider.of<CounterProvider>(context, listen: false).increment();
  }
}

```

### 📌 **View (`HomeView`)**

Displays the counter and buttons to interact.

```dart
Text('${Provider.of<CounterProvider>(context).count}');

```

----------

## 📚 **Technologies Used**

-   🎯 **Flutter** (UI framework)
-   🛠 **Provider** (State management)
-   🏛 **MVC Pattern** (Code organization)

----------
### 📌 **Author**

Developed by **[Yehor Chervonyi]** – [GitHub](https://github.com/YehorChervonyi)