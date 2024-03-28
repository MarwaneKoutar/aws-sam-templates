BUILD_DIR := {{ cookiecutter.__project_dir }}/.aws-sam/build
BUILD_FLAG := $(BUILD_DIR)/build_complete.flag
DOCKER_IMAGE := swift-lambda-builder-workaround

.PHONY: build-%

build-%:
	@if [ ! -f $(BUILD_FLAG) ]; then \
		echo "Building All Lambdas..."; \
		docker inspect $(DOCKER_IMAGE) >/dev/null 2>&1 || docker build -t $(DOCKER_IMAGE) .; \
		swift package --disable-sandbox plugin archive --base-docker-image $(DOCKER_IMAGE) --disable-docker-image-update --output-path $(BUILD_DIR); \
		echo "Build for all Lambdas complete."; \
		touch $(BUILD_FLAG); \
	fi