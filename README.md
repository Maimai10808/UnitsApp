# UnitsApp - 强大的单位转换应用

UnitsApp 是一个使用 SwiftUI 构建的现代化单位转换应用，支持多种物理量的单位转换。本项目展示了现代 iOS 开发的最佳实践和高级技术特性。

## 🚀 技术亮点

### 1. 现代化的架构设计
- 采用 MVVM 架构模式，实现清晰的关注点分离
- 使用 SwiftUI 的声明式 UI 框架，构建响应式用户界面
- 通过 `@Published` 和 `@ObservedObject` 实现数据绑定和状态管理

### 2. 强大的单位转换系统
```swift
struct UnitOption {
    let name: String
    let unit: Dimension
}

enum UnitCategory: String, CaseIterable {
    case acceleration = "Acceleration"
    case angle = "Angle"
    // ... 支持20+种单位类别
}
```
- 利用 Swift 的 `Dimension` 类型系统实现类型安全的单位转换
- 支持超过20种物理量的单位转换，包括长度、质量、温度等
- 每个类别下包含多个常用单位，满足各种使用场景

### 3. 优雅的视图模型设计
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
- 使用 `ObservableObject` 协议实现响应式数据流
- 通过计算属性实现单位转换逻辑的封装
- 优雅的错误处理和边界条件处理

### 4. 用户友好的界面设计
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
                // ... 更多UI组件
            }
        }
    }
}
```
- 使用 SwiftUI 的 `Form` 和 `Section` 构建清晰的界面结构
- 实现直观的单位选择器和输入输出界面
- 支持实时转换结果展示

## 🛠 技术栈
- SwiftUI
- Swift 5.9+
- iOS 15.0+
- Xcode 15.0+

## 📱 功能特性
- 支持20+种物理量的单位转换
- 实时转换结果展示
- 直观的用户界面
- 支持多种常用单位
- 精确的转换计算

## 🔧 项目结构
```
UnitsApp/
├── Model/
│   └── Units.swift        # 单位定义和转换逻辑
├── Core/
│   ├── UnitsView/
│   │   ├── ViewModels/    # 视图模型
│   │   └── Views/         # 视图组件
│   └── HomeView/          # 主视图
```

## 🎯 为什么这个项目值得关注？
1. 展示了现代 SwiftUI 开发的最佳实践
2. 实现了复杂的单位转换系统，具有实际应用价值
3. 代码结构清晰，易于维护和扩展
4. 使用了 Swift 的类型系统和现代编程范式
5. 展示了响应式编程在 iOS 开发中的应用

## 📝 如何运行
1. 克隆项目到本地
2. 使用 Xcode 15.0 或更高版本打开项目
3. 选择目标设备或模拟器
4. 点击运行按钮

## 🤝 贡献
欢迎提交 Pull Request 或创建 Issue 来改进项目！

## 📄 许可证
MIT License 