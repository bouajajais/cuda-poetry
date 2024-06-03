# cuda-poetry

This is a Docker image based on `ismailbouajaja/cuda-python` that installs `poetry` on top.

It provides a convenient environment for managing CUDA-enabled `python` projects with `poetry`.

## Available tags

Tags reflect the image of cuda used and the version of python added on top in the form `${CUDA_TAG}-python${PYTHON_VERSION}-poetry${POETRY_VERSION}`.

Currently, `latest` corresponds to `12.4.1-cudnn-devel-ubuntu22.04-python3.12-poetry1.8`.

Here are the TAGS currently available :
```Python
CUDA_VERSIONS = ["12.3.2", "12.4.1"]
CUDA_CUDNN_OPTIONS = ["", "-cudnn", "-cudnn9"] # -cudnn for 12.4.1; -cudnn9 for 12.3.2
CUDA_TYPES = ["-devel"]
CUDA_OS_OPTIONS = ["-ubuntu20.04", "-ubuntu22.04"]
PYTHON_VERSIONS = ["3.10", "3.11", "3.12"]
POETRY_VERSIONS = ["1.6", "1.7", "1.8"]
```

Other tags will be added later.

## Clone repository

To clone the github repository containing the Dockerfile used, follow these steps :

1. Clone the repository:
    ```bash
    git clone https://github.com/bouajajais/cuda-poetry.git
    ```

2. Navigate to the project directory:
    ```bash
    cd cuda-poetry
    ```

2. Build the Docker image using the provided Dockerfile:
    ```bash
    docker build -t cuda-poetry .
    ```

    The `docker build` command accepts the following arguments:
    - `ARG CUDA_TAG=12.4.1-cudnn-devel-ubuntu22.04`: The CUDA base image tag.
    - `ARG PYTHON_VERSION=3.12`: The Python version to install.
    - `ARG POETRY_VERSION=1.8.*`: The Poetry version to install.
    - `ARG PYTHONDONTWRITEBYTECODE=1`: Other argument.
    - `ARG PYTHONUNBUFFERED=1`: Other argument.

3. Run the Docker container:
    ```bash
    docker run --rm -it --gpus all cuda-poetry bash
    ```

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.