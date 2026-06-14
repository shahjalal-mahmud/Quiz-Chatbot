# Amar Proshno

### Flutter Quiz Application

*A modern and beautifully designed Flutter quiz application built as an assignment project.*

---

## 📱 Overview

**Amar Proshno** is a simple yet polished multiple-choice quiz application built with Flutter. The project focuses on clean UI design, smooth user experience, and straightforward application architecture while keeping the implementation lightweight and easy to understand.

All questions and answers are stored locally using hardcoded data, with no backend or external APIs.

---

## 🎨 Design Theme

The app follows a consistent **soft purple / lavender gradient** design language across all screens:

- **Background** — Full-screen vertical gradient: `#E1D5F5 → #CFBEF0 → #BFA8E8`
- **Primary color** — Deep purple `#5E35B1` / `#7E57C2` / `#9575CD`
- **Cards** — Organic blob-shaped containers with asymmetric rounded corners and semi-transparent purple fills
- **Buttons** — Pill-shaped (`borderRadius: 30`) with filled and outlined variants
- **Option tiles** — Pill-shaped rows with circular letter badge (A, B, C, D) on the left
- **Typography** — Wide letter-spacing uppercase labels, deep purple text `#4A148C`

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

---

## Features

### Splash Screen
- Native Flutter splash screen
- Clean and minimal branding
- Automatic navigation to Home Screen

### Home Screen
- Full-screen lavender gradient background
- Centered brain + gears icon cluster with concentric faint rings
- Bold `QUIZ` title with wide letter-spacing
- Pill-shaped `START` button at the bottom

### Quiz Screen
- Same gradient background for visual consistency
- Question number badge (circle) above the blob question card
- Organic blob-shaped question card with asymmetric corners
- Pill-shaped option tiles with circular A/B/C/D letter badges
- `NEXT` / `SUBMIT` pill button at the bottom
- Close button to exit quiz

### Result Screen
- Same gradient background
- Blob-shaped score summary card showing score, percentage, correct/wrong pills
- Scrollable detailed question-by-question breakdown
- Each result item uses purple tints — no harsh red/green
- `HOME` (outlined) and `RESTART` (filled) pill buttons

---

## Project Structure

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

- Stored locally, no database or API
- Hardcoded question list
- Four options per question
- One correct answer per question

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
  correctAnswerIndex: 1,
)
```

---

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
```

No third-party packages required.

---

## Getting Started

### Prerequisites
- Flutter SDK
- Android Studio or VS Code
- Android Emulator or Physical Device

### Run

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
| Blob Question Card       | ✅      |
| Pill Option Tiles        | ✅      |
| Next Question Navigation | ✅      |
| Submit on Final Question | ✅      |
| Score Summary Card       | ✅      |
| Detailed Result Screen   | ✅      |
| Restart Quiz             | ✅      |
| Back to Home             | ✅      |
| Consistent Purple Theme  | ✅      |
| Gradient Background      | ✅      |

---

## Learning Objectives

- Flutter navigation and routing
- Stateful widget management
- Local data handling
- List-based UI rendering
- Progress tracking
- User interaction handling
- Quiz logic implementation
- Consistent design systems in Flutter
- Responsive mobile UI development

---

<div align="center">

### Md. Shahajalal Mahmud

Flutter Developer • Android Developer • Founder, Appriyo

</div>