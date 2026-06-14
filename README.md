# Amar Proshno

### Flutter Quiz Application

*A modern and beautifully designed Flutter quiz application built as an assignment project.*

---

## 📱 Overview

**Amar Proshno** is a simple yet polished multiple-choice quiz application built with Flutter. The project focuses on clean UI design, smooth user experience, and straightforward application architecture while keeping the implementation lightweight and easy to understand.

All questions and answers are stored locally using hardcoded data, with no backend or external APIs.

---

## Application Flow

```text
Flutter Native Splash
          │
          ▼
     Home Screen
          │
     Start Quiz
          │
          ▼
    Quiz Screen (Single Screen)
          │
    Question 1 → Question 2 → ... → Question N
          │
          ▼
      Result Screen
          │
    ┌───────────────┐
    │ Restart Quiz  │
    │ Go To Home    │
    └───────────────┘
```

---

## Features

### Splash Screen

* Native Flutter splash screen
* Clean and minimal branding
* Automatic navigation to Home Screen

### Home Screen

* Modern and visually appealing UI
* Simple and distraction-free design
* Single **Start Quiz** button
* Smooth entrance animations

### Quiz Screen

* Beautiful animated progress indicator
* One question displayed at a time
* Multiple Choice Questions (MCQ)
* Four answer options per question
* Single answer selection only
* Dynamic **Next** button
* **Submit** button on the final question
* Smooth transitions and micro animations
* No unnecessary screen changes between questions

### Result Screen

* Quiz completion summary
* Score display
* Detailed question-by-question results
* Correct and incorrect answer indicators
* Restart Quiz button
* Back to Home button

---

## Project Structure

A lightweight and beginner-friendly feature-based structure.

```text
lib/
│
├── main.dart
│
├── models/
│   └── question.dart
│
├── data/
│   └── quiz_data.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── quiz_screen.dart
│   └── result_screen.dart
│
├── widgets/
│   ├── progress_bar.dart
│   ├── question_card.dart
│   ├── option_tile.dart
│   └── primary_button.dart
│
└── theme/
    └── app_theme.dart
```

---

## Quiz Data

* Stored locally
* Hardcoded question list
* Four options per question
* One correct answer per question
* No database
* No API

Example structure:

```dart
Question(
  question: "What is Flutter?",
  options: [
    "Programming Language",
    "Framework",
    "Database",
    "Operating System",
  ],
  correctAnswer: 1,
)
```

---

## Design Goals

* Clean and modern interface
* Material 3 design principles
* Smooth animations
* Professional-looking components
* Consistent spacing and typography
* Mobile-friendly responsive layout
* Minimal yet visually impressive user experience

---

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
```

No backend, database, or third-party packages required for the core functionality.

---

## Getting Started

### Prerequisites

* Flutter SDK
* Android Studio or VS Code
* Android Emulator or Physical Device

### Run Project

```bash
flutter pub get

flutter run
```

### Build APK

```bash
flutter build apk --release
```

---

## Assignment Summary

| Feature                  | Status |
|--------------------------|--------|
| Native Splash Screen     | ✅      |
| Home Screen              | ✅      |
| MCQ Questions            | ✅      |
| Hardcoded Local Data     | ✅      |
| Single Answer Selection  | ✅      |
| Progress Indicator       | ✅      |
| Animated UI              | ✅      |
| Next Question Navigation | ✅      |
| Submit on Final Question | ✅      |
| Detailed Result Screen   | ✅      |
| Restart Quiz             | ✅      |
| Back to Home             | ✅      |
| Responsive Design        | ✅      |
| Material 3 UI            | ✅      |

---

## Learning Objectives

* Flutter navigation
* Stateful widget management
* Local data handling
* List-based UI rendering
* Progress tracking
* User interaction handling
* Basic quiz logic implementation
* Modern Material 3 interface design
* Responsive mobile UI development

---

<div align="center">

### Md. Shahajalal Mahmud

Flutter Developer • Android Developer • Founder, Appriyo

</div>
