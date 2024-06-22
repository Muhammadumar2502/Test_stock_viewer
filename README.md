# Task_stock_viewer

This is a Stock Management application built using Flutter and Riverpod. The app displays a list of stock items with pagination, allowing the user to load more items as they scroll. Each item is displayed inside a card with padding and includes the quantity, name, and producer. The app supports keyboard navigation and item selection, highlighting the selected item.

## Features

- **Pagination**: Items are loaded in batches of 50, with new items loaded as the user scrolls.
- **Keyboard Navigation**: Navigate through the list using the up and down arrow keys.
- **Item Selection**: Click on an item to select it, with the selected item highlighted.
- **Clean Architecture**: The project follows Clean Architecture principles, ensuring a well-organized and maintainable codebase.
- **Flutter Riverpod**: State management is handled using Riverpod for a scalable and easy-to-use state management solution.

## Directory Structure

The project is organized as follows:

> ```console
> lib/
> ├── app.dart
> ├── data/
> │ ├── models/
> │ │ └── stock_item_model.dart
> │ ├── repositories/
> │ │ └── stock_repository_impl.dart
> ├── domain/
> │ ├── entities/
> │ │ └── stock_item.dart
> │ ├── repositories/
> │ │ └── stock_repository.dart
> │ └── usecases/
> │ └── fetch_stock_items.dart
> ├── presentation/
> │ ├── pages/
> │ │ └── stock_list_page.dart
> │ ├── state/
> │ │ └── stock_list_state.dart
> │ └── providers.dart
> ├── main.dart
> ├── exports.dart
> ```


## Getting Started

To get started with the project, follow these steps:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/Muhammadumar2502/Test_stock_viewer.git
    ```

2. **Navigate to the project directory**:
    ```sh
    cd Test_stock_viewer
    ```

3. **Install dependencies**:
    ```sh
    flutter pub get
    ```

4. **Run the app**:
    ```sh
    flutter run
    ```

## Dependencies

- **Flutter**: The UI framework.
- **Flutter Riverpod**: For state management.

## Contributing

Contributions are welcome! If you have any improvements or suggestions, feel free to create a pull request or open an issue.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


