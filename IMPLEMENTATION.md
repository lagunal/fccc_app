# IMPLEMENTATION.md: FCCC Church App

This document outlines the development plan for the FCCC Church App. Each phase will be followed by a cycle of testing, code cleanup, and a commit to version control.

## Phase 1: Project Initialization and Setup

- [x] Create the Flutter project `fccc_app` in the current directory.
- [x] Remove the default `flutter_test` dependency and the `test` directory.
- [x] Update the `pubspec.yaml` description and set the version to `0.1.0`.
- [x] Create a `CHANGELOG.md` file with an entry for version 0.1.0.
- [x] Create an initial `README.md` file.
- [x] Commit the initial project structure to the `main` branch with the message "feat: Initial project setup".

## Phase 2: Core Navigation and UI Shell

- [ ] Add the `go_router` package for navigation.
- [ ] Create a `lib/routing` directory and define the basic application routes (e.g., `/`, `/sermons`, `/events`, `/profile`).
- [ ] Create placeholder `StatelessWidget` for the main screens: `HomeScreen`, `SermonsScreen`, `EventsScreen`, `ProfileScreen`.
- [ ] Implement the main application widget (`App.dart`) with a `MaterialApp.router` configuration.
- [ ] Add a `BottomNavigationBar` to the main screen to switch between the primary app sections.
- [ ] Run `dart_fix`, `dart_format`, and `flutter analyze` to ensure code quality.
- [ ] Commit changes with the message "feat: Implement basic app navigation and shell structure".

## Phase 3: Firebase Integration

- [ ] Add `firebase_core`, `firebase_auth`, and `cloud_firestore` to `pubspec.yaml`.
- [ ] Run `flutterfire configure` to generate the `firebase_options.dart` file.
- [ ] Modify `main.dart` to initialize Firebase on app startup.
- [ ] Set up a `FirebaseService` class to handle all Firebase-related interactions.
- [ ] Run `dart_fix`, `dart_format`, and `flutter analyze`.
- [ ] Commit changes with the message "feat: Integrate and configure Firebase SDK".

## Phase 4: User Authentication

- [ ] Design and build the UI for the login and registration screens.
- [ ] Implement the logic for user registration, login, and logout using `FirebaseAuth`.
- [ ] Implement state management (using Provider/Riverpod) to handle the user's authentication state globally.
- [ ] Create a `UserRepository` to manage user data in Firestore (e.g., creating a user document on registration).
- [ ] Run `dart_fix`, `dart_format`, and `flutter analyze`.
- [ ] Write widget tests for the login and registration screens.
- [ ] Commit changes with the message "feat: Implement user authentication".

## Phase 5: Sermon & Media Playback

- [ ] Add the `just_audio` and `http` packages for audio streaming.
- [ ] Create the data model for `Sermon`.
- [ ] Build the UI for the `SermonsScreen` to display a list of sermons from Firestore.
- [ ] Create a `SermonPlayerScreen` with UI controls for play/pause, scrub, and volume.
- [ ] Implement the logic to stream and play audio files.
- [ ] Implement the "favorite" functionality for sermons.
- [ ] Run `dart_fix`, `dart_format`, and `flutter analyze`.
- [ ] Write unit tests for the sermon data handling and widget tests for the UI components.
- [ ] Commit changes with the message "feat: Implement sermon listing and playback".

## Phase 6: Events & Calendar

- [ ] Add the `table_calendar` package.
- [ ] Create the data model for `Event`.
- [ ] Build the `EventsScreen` with the `TableCalendar` widget to display events.
- [ ] Implement the logic to fetch and display events from Firestore.
- [ ] Create a detail view for individual events.
- [ ] Run `dart_fix`, `dart_format`, and `flutter analyze`.
- [ ] Write widget tests for the calendar and event list.
- [ ] Commit changes with the message "feat: Implement event calendar and details".

## Phase 7: Ministry Directory

- [ ] Create the data model for `Ministry`.
- [ ] Build the `MinistryDirectoryScreen` to display a list of ministries.
- [ ] Create a detail view for individual ministries.
- [ ] Run `dart_fix`, `dart_format`, and `flutter analyze`.
- [ ] Commit changes with the message "feat: Implement ministry directory".

## Phase 8: Final Touches & Documentation

- [ ] Implement the "Donate" button to open the provided URL.
- [ ] Implement the "Daily Verse" notification feature.
- [ ] Update the `README.md` with comprehensive information about the app.
- [ ] Create the `GEMINI.md` file with project details.
- [ ] Perform a final round of testing and bug fixing.
- [ ] Commit any final changes.
- [ ] Notify the user for final review and approval.

---

## Post-Phase Checklist

- [ ] Create or modify unit/widget tests for the code added or changed in this phase.
- [ ] Run all tests to ensure they pass and that there are no regressions.
- [ ] Thoroughly test all new features and bug fixes related to the phase.
- [ ] Ensure all code adheres to the project's coding standards and style guidelines.
- [ ] Run `dart fix --apply` to automatically fix any linting issues.
- [ ] Run `dart format .` to ensure consistent code formatting.
- [ ] Run `flutter analyze` to check for any static analysis warnings or errors.
- [ ] Update relevant documentation (e.g., `README.md`, `DESIGN.md`) with changes or additions from the phase.
- [ ] Use `git diff` to verify the changes, create a suitable commit message, and present it to the user for approval.
- [ ] **Wait for user approval before committing the changes and moving to the next phase.**
- [ ] After committing, if the app is running, use `hot_reload` or `hot_restart`.
- [ ] Update the Journal section in `IMPLEMENTATION.md` to mark the phase as complete.

---

### Journal
*This section will be updated as I complete each phase.*

**2025-12-12: Phase 1 Complete**
- Initialized the Flutter project.
- Cleaned up default files and dependencies.
- Established the initial project documentation (`README.md`, `CHANGELOG.md`).
- Made the initial commit to the `main` branch.
---
