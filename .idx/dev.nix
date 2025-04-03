# .idx/dev.nix
# Located at: /home/user/nood-leog.github.io/.idx/dev.nix

{ pkgs, ... }: {
  channel = "stable-24.05"; # or "unstable"

  packages = [
    # ---> ADD FLUTTER SDK <---
    pkgs.flutter

    # JDK is needed if you ever plan to build for Android
    pkgs.jdk17
    pkgs.unzip
    # Add other necessary system packages here
  ];

  env = {};

  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    workspace = {
      # Optional: Add commands to run when workspace is created or started
      # Example: ensure dependencies are installed
      onCreate = {
         install-deps = "flutter pub get";
      };
      # onStart = {
      #   update-deps = "flutter pub get";
      # };
    };

    previews = {
      enable = true;
      previews = {
        web = {
          command = ["flutter" "run" "--machine" "-d" "web-server" "--web-hostname" "0.0.0.0" "--web-port" "$PORT"];
          manager = "flutter";
          # ---> REMOVE CWD - No longer needed as project is root <---
          # cwd = "./nood-leog.github.io";
        };

        android = {
          command = ["flutter" "run" "--machine" "-d" "android" "-d" "localhost:5555"];
          manager = "flutter";
          # ---> REMOVE CWD - No longer needed as project is root <---
          # cwd = "./nood-leog.github.io";
        };
      };
    };
  };
}