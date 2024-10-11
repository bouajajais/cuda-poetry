# cuda-poetry

This Docker image is built on top of the `ismailbouajaja/cuda-python` image.

It installs the following element(s) on top:

poetry

## Tag Format

Tags follow this format : `{CUDA_TAG}-python{PYTHON_VERSION}-poetry{POETRY_VERSION}`.

## Dockerhub

These images can be found in Dockerhub through the following link:

[https://hub.docker.com/repository/docker/ismailbouajaja/cuda-poetry/general](https://hub.docker.com/repository/docker/ismailbouajaja/cuda-poetry/general)

## Clone repository

To clone the github repository containing the Dockerfile used, follow these steps :

1. Clone the repository [https://github.com/bouajajais/cuda-poetry.git](https://github.com/bouajajais/cuda-poetry.git):
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
    - `ARG CUDA_TAG=12.6.1-cudnn-devel-ubuntu22.04`: The CUDA base image tag.
    - `ARG PYTHON_VERSION=3.12`: The Python version to install.
    - `ARG POETRY_VERSION=1.8.*`: The Poetry version to install.
    - `ARG PYTHONDONTWRITEBYTECODE=1`: Other argument.
    - `ARG PYTHONUNBUFFERED=1`: Other argument.

3. Run the Docker container:
    ```bash
    docker run --rm -it cuda-poetry bash
    ```

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.