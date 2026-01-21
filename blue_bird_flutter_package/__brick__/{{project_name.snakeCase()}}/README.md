# {{project_name.pascalCase()}}

{{project_description}}

## Overview

This package follows **Clean Architecture** principles with a layered approach, ensuring separation of concerns, testability, and maintainability. The architecture is divided into three main layers: **Presentation**, **Domain**, and **Data**.

## Architecture

### 📐 Clean Architecture Layers

```
┌─────────────────────────────────────────────┐
│          Presentation Layer                 │
│  (Pages, Widgets, Cubits, States)           │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│           Domain Layer                      │
│  (Entities, Use Cases, Repositories)        │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│            Data Layer                       │
│  (Repositories, Datasources, Models)        │
└─────────────────────────────────────────────┘
```

### 1. Presentation Layer (`lib/src/presentation/`)

**Responsibility**: Handle UI and user interactions

- **Pages**: Full screen widgets that represent routes
- **Widgets**: Reusable UI components
- **View Models (Cubits)**: Manage UI state using BLoC pattern
  - Emit states to update UI
  - Call use cases for business logic
  - Framework-aware, Flutter/BLoC specific
- **States**: Immutable state classes using Freezed

**Key Features**:
- State management with `flutter_bloc`
- Dependency injection with `get_it` and `injectable`
- Reactive UI updates via BlocBuilder/BlocListener

### 2. Domain Layer (`lib/src/domain/`)

**Responsibility**: Business logic and rules (Framework Independent)

- **Entities**: Pure business objects using Freezed for immutability
  - Represent core business concepts
  - Framework-independent
  - Freezed for value equality and immutability
  
- **Use Cases**: Single-responsibility business logic units
  - One use case per business action
  - Called by presentation layer (Cubits)
  - Use repositories to fetch/persist data
  - Return domain entities
  
- **Repository Interfaces**: Abstract contracts for data operations
  - Define what data operations are needed
  - Implemented in data layer

**Key Principles**:
- No Flutter dependencies
- Highly testable with unit tests
- Independent of external frameworks

### 3. Data Layer (`lib/src/data/`)

**Responsibility**: Data access and external communication

- **Repository Implementations**: Concrete implementations of domain repository interfaces
  - Coordinate between datasources and mappers
  - Handle data fetching strategies (local vs remote)
  - Transform data models to domain entities
  
- **Datasources**: Handle actual data operations
  - **Local**: Local storage (database, shared preferences, etc.)
  - **Remote**: API calls, network requests
  - **Contract**: Interface defining datasource operations
  
- **Models**: Data transfer objects (DTOs)
  - JSON serializable using `json_serializable`
  - Represent data structure from external sources
  
- **Mappers**: Transform data between layers
  - `EntityToDataMapper`: Entity → Data Model
  - `DataToEntityMapper`: Data Model → Entity

## Project Structure

```
lib/
├── {{project_name.snakeCase()}}.dart          # Public exports
└── src/
    ├── config/
    │   ├── di/                    # Dependency injection setup
    │   └── {{project_name.snakeCase()}}_constant.dart
    │
    ├── presentation/
    │   ├── pages/                 # Full screen routes
    │   ├── view_models/           # Cubits and States
    │   └── widgets/               # Reusable components
    │
    ├── domain/
    │   ├── entities/              # Business objects
    │   ├── repositories/          # Repository contracts
    │   └── use_cases/             # Business logic
    │
    └── data/
        ├── datasources/           # Data sources
        │   ├── contract/          # Datasource interface
        │   ├── local/             # Local storage
        │   └── remote/            # API/Network
        ├── mappers/               # Data transformers
        ├── models/                # DTOs
        └── repositories/          # Repository implementations
```

## Key Technologies

- **State Management**: `flutter_bloc` (Cubit)
- **Dependency Injection**: `get_it` + `injectable`
- **Immutability**: `freezed`
- **JSON Serialization**: `json_serializable`
- **Code Generation**: `build_runner`
- **Testing**: `mocktail`, `bloc_test`, `alchemist` (golden tests)
- **Code Quality**: `very_good_analysis`

## Dependency Injection

This package uses **injectable** with **get_it** for dependency injection:

```dart
// Initialize DI
await configureDependencies();

// Access registered dependencies
final page = getIt<{{project_name.pascalCase()}}Page>();
```

Annotations used:
- `@singleton`: Single instance throughout app lifecycle
- `@lazySingleton`: Lazy-loaded singleton
- `@LazySingleton(as: Interface)`: Register implementation as interface
- `@Named('name')`: Named instances for multiple implementations

## Data Flow

```
User Interaction
      ↓
   Widget
      ↓
  Cubit (State Management)
      ↓
  Use Case (Business Logic)
      ↓
  Repository Interface
      ↓
Repository Implementation
      ↓
  Datasource (Local/Remote)
      ↓
  External Data Source
```

**Return Flow**:
```
External Data → Model → Mapper → Entity → Use Case → Cubit → State → Widget
```

## Testing Strategy

The architecture supports comprehensive testing at all levels:

### Unit Tests
- **Domain**: Test use cases and business logic
- **Data**: Test repositories, datasources, and mappers
- **Presentation**: Test cubits and state transitions

### Widget Tests
- Test individual widgets and pages
- Mock cubits using `bloc_test`

### Golden Tests
- Visual regression testing using `alchemist`
- Ensure UI consistency across changes

### Test Structure
```
test/
├── config/
│   ├── fake/                      # Fake implementations
│   ├── mock/                      # Mock objects
│   └── register_all_fallback_values.dart
├── data/
│   ├── datasources/               # Datasource tests
│   ├── mappers/                   # Mapper tests
│   └── repositories/              # Repository tests
├── domain/
│   └── use_cases/                 # Use case tests
└── presentation/
    ├── pages/                     # Golden tests
    └── view_models/               # Cubit tests
```

## Getting Started

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  {{project_name.snakeCase}}:
    path: packages/{{project_name.snakeCase()}}
```

## Development Guidelines

### Adding New Features

1. **Domain First**: Define entities and use case interfaces
2. **Data Layer**: Implement repositories and datasources
3. **Presentation**: Create cubits, states, and UI
4. **Tests**: Write tests at each layer

### Best Practices

- Keep use cases focused (Single Responsibility)
- Entities should be immutable (use Freezed)
- Repository interfaces in domain, implementations in data
- Inject dependencies via constructor
- Write tests before implementation (TDD recommended)
- Use mappers to transform between layers
- Keep presentation layer thin (delegate to use cases)

## Benefits of This Architecture

✅ **Testability**: Each layer can be tested independently  
✅ **Maintainability**: Clear separation of concerns  
✅ **Scalability**: Easy to add new features  
✅ **Reusability**: Domain layer is framework-independent  
✅ **Team Collaboration**: Clear boundaries for different team members  
✅ **Flexibility**: Easy to swap implementations (e.g., datasources)  

## License

This package is part of the Blue Bird Bricks collection.