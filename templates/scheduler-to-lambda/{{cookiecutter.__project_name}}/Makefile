BUILD_DIR := {{ cookiecutter.__project_dir }}/.aws-sam/build
BUILD_FLAG := $(BUILD_DIR)/build_complete.flag

.PHONY: build-%

build-%:
	@if [ ! -f $(BUILD_FLAG) ]; then \
		echo "Building All Lambdas..."; \
		swift package --disable-sandbox plugin archive --output-path $(BUILD_DIR); \
		echo "Build for all Lambdas complete."; \
		touch $(BUILD_FLAG); \
	fi
