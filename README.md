# Round buttons

Quick round buttons for Flutter

## Normal button with round corners

   ```dart
   final Widget roundButton = RoundButton(
       text: "My button",
       iconData: Icons.file,
       color: Colors.blue,
       onPressed: () => print("Pressed")
   );
   ```

## Big round button

   ```dart
   final Widget roundButton = BigRoundButton(
       text: "My button",
       iconData: Icons.file,
       onPressed: () => print("Pressed")
   );
   ```

## Cancel button

   ```dart
   final Widget roundButton = CancelButton();
   );
   ```
