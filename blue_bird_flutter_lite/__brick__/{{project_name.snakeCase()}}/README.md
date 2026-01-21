# {{project_name.pascalCase()}}

{{project_description}}

## Overview

This is a **lightweight Flutter application** following **Clean Architecture** principles. It provides a simpler, streamlined structure compared to the full multi-package project setup, ideal for small to medium-sized apps that need clean separation of concerns without the complexity of a monorepo workspace.

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

### 1. **Presentation Layer** (`lib/src/presentation/`)

**Responsibility**: Handle UI and user interactions

**Components**:
- **Pages**: Full-screen widgets representing different routes
- **Widgets**: Reusable UI components
- **View Models (Cubits)**: Manage UI state using BLoC pattern
  - Emit states to update UI
  - Call use cases for business logic
  - Handle user interactions

**Key Features**:
- State management with `flutter_bloc`
- Reactive UI updates via BlocBuilder/BlocListener
- Separation of business logic from UI

### 2. **Domain Layer** (`lib/src/domain/`)

**Responsibility**: Business logic and rules (Framework Independent)

**Components**:
- **Entities**: Pure business objects using Freezed for immutability
  - Represent core business concepts
  - Framework-independent
  - Value equality and immutability
  
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

### 3. **Data Layer** (`lib/src/data/`)

**Responsibility**: Data access and external communication

**Components**:
- **Repository Implementations**: Concrete implementations of domain repository interfaces
  - Coordinate between datasources and mappers
  - Handle data fetching strategies (local vs remote)
  - Transform data models to domain entities
  
- **Datasources**: Handle actual data operations
  - **Local**: Local storage (database, shared preferences)
  - **Remote**: API calls, network requests
  - **Contract**: Interface defining datasource operations
  
- **Models**: Data transfer objects (DTOs)
  - JSON serializable using `json_serializable`
  - Represent data structure from external sources
  
- **Mappers**: Transform data between layers
  - Convert models to entities and vice versa

## Project Structure

```
{{project_name.snakeCase()}}/
├── lib/
│   ├── main.dart                      # App entry point
│   └── src/
│       ├── config/
│       │   ├── {{project_name.snakeCase()}}_constant.dart    # App constants
│       │   ├── {{project_name.snakeCase()}}_color.dart       # Color palette
│       │   ├── {{project_name.snakeCase()}}_theme_data.dart  # Theme configuration
│       │   ├── di/                    # Dependency injection
│       │   │   ├── injection.dart     # DI setup
│       │   │   └── modules/           # DI modules
│       │   ├── l10n/                  # Localization files
│       │   └── routes/                # App routes
│       ├── presentation/
│       │   ├── pages/                 # Screen widgets
│       │   ├── view_models/           # BLoC/Cubit state managers
│       │   └── widgets/               # Reusable components
│       ├── domain/
│       │   ├── entities/              # Business objects
│       │   ├── repositories/          # Repository interfaces
│       │   └── use_cases/             # Business logic
│       └── data/
│           ├── datasources/
│           │   ├── contract/          # Datasource interfaces
│           │   ├── local/             # Local data sources
│           │   └── remote/            # API clients
│           ├── models/                # DTOs
│           ├── mappers/               # Data transformers
│           └── repositories/          # Repository implementations
├── test/                              # Mirror structure of lib/
├── assets/
│   ├── icons/                         # App icons
│   └── images/                        # Image assets
├── pubspec.yaml
└── analysis_options.yaml
```

## Key Technologies

### Core Dependencies

- **flutter_bloc**: State management solution
- **get_it**: Service locator for dependency injection
- **injectable**: Code generation for dependency injection
- **freezed**: Code generation for immutable classes
- **go_router**: Declarative routing
- **dio**: HTTP client for API calls

### Development Tools

- **build_runner**: Code generation
- **json_serializable**: JSON serialization
- **mockito**: Testing mocks
- **bloc_test**: Testing for BLoC/Cubit

## Localization

The app supports internationalization using Flutter's built-in localization.

### Adding Translations

1. Add your ARB files in `lib/src/l10n/`:
   - `app_en.arb` (English)
   - `app_es.arb` (Spanish)
   - etc.

2. Run code generation:
   ```bash
   flutter gen-l10n
   ```

3. Use in code:
   ```dart
   Text(S.of(context)!.helloWorld)
   ```

## License

This package is part of the Blue Bird Bricks collection.
