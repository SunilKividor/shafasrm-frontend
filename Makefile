FLUTTER = flutter
DART = dart
BUILD_RUNNER = $(DART) run build_runner

gen:
	@echo "Cleaning and generating code..."
	@$(BUILD_RUNNER) clean
	@$(BUILD_RUNNER) build --delete-conflicting-outputs