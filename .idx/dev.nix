# .idx/dev.nix
# Located at: /home/user/myapp/nood-leog.github.io/.idx/dev.nix

{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.jdk17
    pkgs.unzip
  ];

  env = {};

  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    workspace = {
      onCreate = {
        # install-deps = "flutter pub get"; # Uncomment if desired
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
          # --- > ADD THIS LINE < ---
          # Specifies the directory to run the command from, relative to the workspace root.
          cwd = "./nood-leog.github.io";
        };

        android = {
          command = ["flutter" "run" "--machine" "-d" "android" "-d" "localhost:5555"];
          manager = "flutter";
          # --- > ADD THIS LINE FOR ANDROID TOO (Good Practice) < ---
          cwd = "./nood-leog.github.io";
        };
      };
    };
  };
}