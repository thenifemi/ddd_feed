# Social Media Feed App - CIRCLE

This repository contains the code for a simple social media feed app built in Flutter that showcases DDD Clean Architecture and separation of concerns. The app has a well-defined domain layer, application layer, presentation layer, and infrastructure layer, making it easy to maintain and scale.

Based on [**Building Flutter Projects with DDD Clean Architecture: A Series on Separation of Concerns and State Management.**](https://www.thenifemi.com/articles/ddd-series-intro)
Read the full article to learn more about the app.

## Getting Started

To get started with the app, follow these steps:

1. Clone this repository to your local machine.
2. Open the project in your favorite IDE or code editor.
3. Run `flutter pub get` to install the required dependencies.
4. Run the app using `flutter run` command.

## Architecture

The app follows DDD Clean Architecture principles to ensure **separation of concerns and modularity**. The **Presentation Layer** is responsible for the user interface and presentation logic, while the **Application Layer** contains the business logic of the application. The **Domain Layer** contains the core domain entities and logic, while the **Infrastructure Layer** deals with the implementation details such as databases, network communication, and other external dependencies.

## Packages Used

The app uses several packages, including:

- **flutter_bloc** with **provider** for state management.
- **get_it** with **injectable** for dependency injection.
- **dartz** for functional programming.
  and more.

## Contributing

Contributions to the app are welcome. To contribute, follow these steps:

1. Fork this repository.
2. Create a new branch for your changes.
3. Make your changes and commit them to your branch.
4. Create a pull request with a description of your changes.
5. Assign **@thenifemi** to review your pull request.
6. Wait for your pull request to be reviewed and merged.

## License

This app is released under the [MIT License](https://opensource.org/license/mit/) .
