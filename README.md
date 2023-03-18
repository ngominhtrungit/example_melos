# example_melos
# author: cristrung
# this is example config flutter melos

# How to run:
  ```xml
  melos bootstrap
  // or
  melos bs
  ```
  
  1. run "flutter pub run build_runner build --delete-conflicting-outputs" in melos
  open melos.yaml file
  ```xml
  scripts:
   generate:flutter:
    run: melos exec -c 1 --depends-on="build_runner" --flutter -- "flutter pub run build_runner build --delete-conflicting-outputs"
    description: Build all generated files for Flutter packages in this project.
  ```
  2. build apk android:
  ```xml
  scripts:
   build_android: flutter build apk --flavor dev 
  
  # or with flutter v3.7.7 upgrade
  scripts:
   build_android: flutter build apk --flavor dev --no-tree-shake-icons
  ```

# Docs:
 - https://melos.invertase.dev/configuration/overview
