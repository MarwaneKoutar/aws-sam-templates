BUILD_DIR := {{ cookiecutter.__project_dir }}/.aws-sam/build
FUNCTION_NAME := HelloWorld

.PHONY: build-$(FUNCTION_NAME) clean

build-$(FUNCTION_NAME):
	@echo "Building $(FUNCTION_NAME)..."
	@mkdir -p $(BUILD_DIR)
	@swift package --disable-sandbox plugin archive --output-path $(BUILD_DIR)
	@echo "Build complete."

clean:
	@echo "Cleaning up..."
	@rm -rf $(BUILD_DIR)
	@echo "Cleanup complete."
