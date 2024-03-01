BUILD_DIR := $(PWD)/.aws-sam/build
BUILD_FLAG := $(BUILD_DIR)/build_complete.flag

build-%:
	@if [ ! -f $(BUILD_FLAG) ]; then \
		echo "Building All Lambdas..."; \
		swift package --disable-sandbox plugin archive --output-path $(BUILD_DIR); \
		echo "Build for all Lambdas complete."; \
		touch $(BUILD_FLAG); \
	fi