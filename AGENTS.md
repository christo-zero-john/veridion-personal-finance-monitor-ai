# AGENTS.md

## 1. Documentation Sources

- You must **ONLY** refer to the official [Flutter Documentation](https://docs.flutter.dev/) and [Dart Documentation](https://dart.dev/guides) when writing code.
- If you are unsure if a feature is deprecated or new, **verify** it against the latest docs. Do not guess.

## 2. Core Responsibility: `lib/calculation-logic`

- Your PRIMARY area of work is the `lib/calculation-logic` directory.
- This containing the core financial calculation algorithms.
- **Do not** modify other parts of the application (UI, `main.dart`, `pubspec.yaml`) unless explicitly instructed or absolutely necessary for the logic integration.

## 3. STRICT COMMIT PROTOCOL

> [!IMPORTANT] > **Adhere to this protocol without exception.**

1.  **Develop & Implement**: Write your code in `lib/calculation-logic`.
2.  **Wait for User Testing**: Inform the user that the code is ready for testing.
    - Do **NOT** commit yet.
3.  **User Confirmation**: The user will test the app on their device.
    - Wait for the user to explicitly state: **"no errors", "no bugs", or "no problems"**.
    - If the user reports errors, fix them and repeat step 2.
4.  **Commit**:
    - **ONLY** after receiving the explicit success confirmation from the user.
    - Perform `git add lib/calculation-logic`.
    - Perform `git commit -m "feat: [description of logic change]"`.
    - **Do not** commit files outside of `lib/calculation-logic` unless authorized.
