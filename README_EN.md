# UnitsApp - Powerful Unit Conversion Application

UnitsApp is a modern unit conversion application built with SwiftUI, supporting multiple physical quantity conversions. This project demonstrates best practices and advanced technical features in modern iOS development.

## 🚀 Technical Highlights

### 1. Modern Architecture Design
- Implemented MVVM architecture pattern for clear separation of concerns
- Utilized SwiftUI's declarative UI framework for responsive user interfaces
- Achieved data binding and state management through `@Published` and `@ObservedObject`

### 2. Robust Unit Conversion System
```swift
struct UnitOption {
    let name: String
    let unit: Dimension
}

enum UnitCategory: String, CaseIterable {
    case acceleration = "Acceleration"
    case angle = "Angle"
    // ... Support for 20+ unit categories
}
```
- Leveraged Swift's `Dimension` type system for type-safe unit conversions
- Supports over 20 physical quantities including length, mass, temperature, etc.
- Comprehensive unit coverage within each category for various use cases

### 3. Elegant ViewModel Design
```swift
class UnitsViewModel: ObservableObject {
    @Published var inputValue: String = ""
    @Published var outputValue: String = ""
    
    var conversionResult: String {
        let inputMeasurement = Measurement(value: value, unit: fromUnit)
        let converted = inputMeasurement.converted(to: toUnit)
        return String(format: "%.2f", converted.value)
    }
}
```
- Implemented reactive data flow using `ObservableObject` protocol
- Encapsulated unit conversion logic through computed properties
- Graceful error handling and boundary condition management

### 4. User-Friendly Interface Design
```swift
struct UnitsView: View {
    @ObservedObject var viewModel: UnitsViewModel
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Enter Input value here")) {
                    Picker("Category", selection: $viewModel.selectedCategory) {
                        ForEach(UnitCategory.allCases, id: \.self) { category in
                            Text(category.rawValue)
                        }
                    }
                }
                // ... More UI components
            }
        }
    }
}
```
- Constructed clear interface structure using SwiftUI's `Form` and `Section`
- Implemented intuitive unit selectors and input/output interfaces
- Real-time conversion result display

## 🛠 Tech Stack
- SwiftUI
- Swift 5.9+
- iOS 15.0+
- Xcode 15.0+

## 📱 Features
- Support for 20+ physical quantity conversions
- Real-time conversion result display
- Intuitive user interface
- Multiple common units support
- Precise conversion calculations

## 🔧 Project Structure
```
UnitsApp/
├── Model/
│   └── Units.swift        # Unit definitions and conversion logic
├── Core/
│   ├── UnitsView/
│   │   ├── ViewModels/    # View models
│   │   └── Views/         # View components
│   └── HomeView/          # Main view
```

## 🎯 Why This Project Stands Out?
1. Demonstrates modern SwiftUI development best practices
2. Implements a sophisticated unit conversion system with practical value
3. Clear code structure for easy maintenance and extension
4. Utilizes Swift's type system and modern programming paradigms
5. Showcases reactive programming in iOS development

## 📝 Getting Started
1. Clone the project to your local machine
2. Open the project with Xcode 15.0 or later
3. Select target device or simulator
4. Click the Run button

## 🤝 Contributing
Contributions are welcome! Feel free to submit a Pull Request or create an Issue.

## 📄 License
MIT License 