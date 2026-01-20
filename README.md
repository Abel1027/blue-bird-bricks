# 🐦 Blue Bird Bricks

A collection of **Mason bricks** for generating well-architected Flutter projects and packages with **Clean Architecture**, **BLoC pattern**, and **Atomic Design** principles.

## 📦 What's Included

This collection contains two main bricks:

### 1. **blue_bird_flutter_project** 🚀
Generate a complete Flutter application with multi-package architecture using Melos workspace.

**Features**:
- ✅ Multi-package monorepo structure with Melos
- ✅ Clean separation: Main app + Core utilities + Design System
- ✅ Routing with go_router
- ✅ Dependency injection (get_it + injectable)
- ✅ Internationalization (i18n) support
- ✅ Atomic Design component library
- ✅ Theme management
- ✅ Melos scripts for common tasks
- ✅ Pre-configured launcher icons & splash screens

**Best for**: Starting a new Flutter application with scalable architecture

### 2. **blue_bird_flutter_package** 📚
Generate a Flutter package following Clean Architecture principles.

**Features**:
- ✅ Clean Architecture (Presentation, Domain, Data layers)
- ✅ BLoC pattern with Cubit for state management
- ✅ Repository pattern with local/remote datasources
- ✅ Dependency injection (get_it + injectable)
- ✅ Freezed for immutable entities
- ✅ Comprehensive test setup (unit, widget, golden tests)
- ✅ Mapper pattern for data transformation
- ✅ Pre-configured code generation

**Best for**: Creating reusable, testable feature packages

## 🚀 Quick Start

### Prerequisites

1. **Install Mason CLI**:
```bash
dart pub global activate mason_cli
```

### Installation

#### Option 1: Install from Local Path

```bash
cd blue-bird-bricks

# Add bricks to Mason
mason add blue_bird_flutter_project --path ./blue_bird_flutter_project
mason add blue_bird_flutter_package --path ./blue_bird_flutter_package

# Get bricks
mason get
```

#### Option 2: Install from Git (Future)

```bash
# Once published
mason add blue_bird_flutter_project --git-url https://github.com/Abel1027/blue-bird-bricks --git-path blue_bird_flutter_project
mason add blue_bird_flutter_package --git-url https://github.com/Abel1027/blue-bird-bricks --git-path blue_bird_flutter_package
```

## 📖 Usage

### Creating a New Flutter Project

```bash
# Navigate to where you want to create the project
cd ~/projects

# Generate the project
mason make blue_bird_flutter_project

# Follow the prompts
# Enter project name: my_awesome_app
# Enter description: My awesome Flutter app

# Navigate to the project
cd my_awesome_app

# Bootstrap the workspace
melos bootstrap

# Run the app
flutter run
```

**Generated Structure**:
```
my_awesome_app/
├── lib/                    # Main application
├── core/                   # Core utilities & localization
├── design_system/          # UI component library
├── assets/                 # App assets
├── test/                   # Tests
├── pubspec.yaml
└── melos.yaml             # Workspace configuration
```

### Creating a New Flutter Package

```bash
# Navigate to your packages directory (or anywhere)
cd ~/projects/my_app/packages

# Generate the package
mason make blue_bird_flutter_package

# Follow the prompts
# Package name: user_profile
# Description: User profile feature package

# Navigate to the package
cd user_profile

# Generate code
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs

# Run tests
flutter test
```

**Generated Structure**:
```
user_profile/
├── lib/
│   ├── user_profile.dart
│   └── src/
│       ├── config/         # DI configuration
│       ├── presentation/   # UI (Pages, Cubits, Widgets)
│       ├── domain/         # Business logic (Entities, Use Cases)
│       └── data/           # Data layer (Repositories, Datasources)
├── test/                   # Comprehensive test suite
└── pubspec.yaml
```

## 🏗️ Architecture Overview

### Blue Bird Flutter Project Architecture

```
┌─────────────────────────────────────────────┐
│         Main Application (lib/)              │
│  - Entry point & initialization              │
│  - Dependency injection setup                │
│  - Global routing configuration              │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│          Core Package (core/)                │
│  - Localization (i18n/l10n)                 │
│  - Route constants                           │
│  - Shared utilities                          │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│      Design System (design_system/)          │
│  - Atomic Design components                  │
│  - Theme configuration                       │
│  - Color palette                             │
└─────────────────────────────────────────────┘
```

### Blue Bird Flutter Package Architecture

```
┌─────────────────────────────────────────────┐
│          Presentation Layer                  │
│  - Pages (UI screens)                        │
│  - Cubits (State management)                 │
│  - Widgets (Reusable components)             │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│            Domain Layer                      │
│  - Entities (Business objects)               │
│  - Use Cases (Business logic)                │
│  - Repository Interfaces                     │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│             Data Layer                       │
│  - Repository Implementations                │
│  - Datasources (Local/Remote)                │
│  - Models & Mappers                          │
└─────────────────────────────────────────────┘
```

## 🔧 Common Tasks

### For Projects (blue_bird_flutter_project)

```bash
# Get all dependencies
melos get

# Generate code
melos generate

# Generate translations
melos l10n

# Run tests with coverage
melos test

# Analyze code
melos analyze

# Format code
melos format

# Update golden tests
melos update_goldens

# Generate launcher icons
melos generate_icon

# Generate splash screens
melos generate_splash
```

### For Packages (blue_bird_flutter_package)

```bash
# Get dependencies
flutter pub get

# Generate code (DI, Freezed, JSON)
flutter pub run build_runner build --delete-conflicting-outputs

# Watch for changes
flutter pub run build_runner watch --delete-conflicting-outputs

# Run tests
flutter test

# Run tests with coverage
flutter test --coverage

# Update golden tests
flutter test --update-goldens
```

## 🎯 Design Principles

### Clean Architecture
- **Separation of Concerns**: Each layer has distinct responsibilities
- **Dependency Rule**: Dependencies point inward (Data → Domain ← Presentation)
- **Framework Independence**: Business logic is independent of Flutter
- **Testability**: Easy to test each layer in isolation

### BLoC Pattern
- **Predictable State Management**: Clear state transitions
- **Reactive Programming**: Stream-based UI updates
- **Business Logic Separation**: Logic separated from UI
- **Easy Testing**: Mock cubits for widget tests

### Atomic Design
- **Atoms**: Basic building blocks (buttons, inputs)
- **Molecules**: Simple combinations (search bar = input + button)
- **Organisms**: Complex sections (header, footer)
- **Consistency**: Reusable components across the app

### Dependency Injection
- **Loose Coupling**: Components don't create dependencies
- **Easy Testing**: Mock dependencies in tests
- **Flexibility**: Swap implementations easily
- **Code Generation**: Automated with injectable

## 📚 Key Technologies

### State Management
- **flutter_bloc**: BLoC pattern implementation
- **Cubit**: Simplified BLoC for state management

### Dependency Injection
- **get_it**: Service locator for Flutter
- **injectable**: Compile-time DI with code generation

### Navigation
- **go_router**: Declarative routing for Flutter

### Code Generation
- **build_runner**: Runs code generators
- **freezed**: Generates immutable classes
- **json_serializable**: JSON serialization
- **injectable_generator**: DI code generation

### Workspace Management
- **melos**: Monorepo management tool

### Testing
- **mocktail**: Mocking library for Dart
- **bloc_test**: Testing library for BLoC
- **alchemist**: Golden testing framework

### Code Quality
- **very_good_analysis**: Strict linting rules

## 🧪 Testing

Both bricks come with comprehensive test setups:

### Package Testing
- **Unit Tests**: Domain layer (use cases, entities)
- **Widget Tests**: Presentation layer (cubits, widgets)
- **Golden Tests**: Visual regression for pages and/or components
- **Data Tests**: Repository, datasource, mapper tests

### Test Organization
```
test/
├── config/
│   ├── fake/              # Fake implementations
│   ├── mock/              # Mock objects
│   └── test_helper.dart   # Test utilities
├── data/                  # Data layer tests
├── domain/                # Domain layer tests
└── presentation/          # Presentation layer tests
```

## 🎨 Customization

### Modifying Generated Code

After generation, you can customize:

1. **Theme**: Edit `design_system/lib/src/config/`
2. **Routes**: Add routes in `core/lib/src/routes/`
3. **Localization**: Add ARB files in `core/lib/src/l10n/`
4. **Components**: Create new atoms, molecules, organisms
5. **Features**: Add new packages or features

### Adding New Features

**For Projects**:
1. Create feature in main app or as a new package
2. Register routes in `app_router.dart`
3. Add translations to ARB files
4. Create UI components in design_system if reusable

**For Packages**:
1. Define entities and use cases in domain layer
2. Implement repositories and datasources in data layer
3. Create cubits and pages in presentation layer
4. Write tests for each layer

## 📁 Repository Structure

```
blue-bird-bricks/
├── README.md                        # This file
├── LICENSE                          # License file
├── CHANGELOG.md                     # Version history
├── mason.yaml                       # Mason configuration
├── mason-lock.json                 # Locked versions
│
├── blue_bird_flutter_project/      # Project brick
│   ├── brick.yaml                   # Brick configuration
│   └── __brick__/                   # Template files
│       └── {{project_name.snakeCase()}}/
│
└── blue_bird_flutter_package/      # Package brick
    ├── brick.yaml                   # Brick configuration
    └── __brick__/                   # Template files
        └── {{project_name.snakeCase()}}/
```

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Report Bugs**: Open an issue describing the bug
2. **Suggest Features**: Open an issue with feature requests
3. **Submit PRs**: Fork, create a branch, make changes, submit PR
4. **Improve Docs**: Help improve documentation
5. **Share Feedback**: Let us know how you're using these bricks

### Development Workflow

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test the bricks locally
5. Submit a pull request

### Testing Bricks Locally

```bash
# Test project brick
cd blue_bird_flutter_project
mason make . -o ../test_output

# Test package brick
cd blue_bird_flutter_package
mason make . -o ../test_output
```

## ❓ FAQ

**Q: Can I use these bricks in existing projects?**  
A: Yes! For packages, generate them into your `packages/` directory. For projects, generate components separately and integrate them.

**Q: Do I need to use both bricks together?**  
A: No, they're independent. Use the project brick for new apps, the package brick for features.

**Q: Can I customize the generated code?**  
A: Absolutely! The generated code is yours to modify and extend.

**Q: What Flutter version is required?**  
A: Flutter 3.5.0 or higher (Dart SDK >=3.5.0)

**Q: How do I update the bricks?**  
A: Run `mason upgrade` or re-add the brick from the updated source.

**Q: Can I use these commercially?**  
A: Yes, see the LICENSE file for details.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Happy Coding! 🎉**

Made with ❤️ by the Blue Bird team