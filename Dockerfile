# syntax=docker/dockerfile:1

# Set the CUDA version to install
ARG CUDA_TAG=12.4.1-cudnn-devel-ubuntu22.04

# Set the Python version to install
ARG PYTHON_VERSION=3.12

# Use an official CUDA image as a parent image
FROM ismailbouajaja/cuda-python:${CUDA_TAG}-python${PYTHON_VERSION}

# Set the Poetry version to install
ARG POETRY_VERSION=1.8.*

ARG PYTHONDONTWRITEBYTECODE=1
ARG PYTHONUNBUFFERED=1

# Set environment variables for Python
ENV POETRY_VERSION=${POETRY_VERSION} \
    PYTHONDONTWRITEBYTECODE=${PYTHONDONTWRITEBYTECODE} \
    PYTHONUNBUFFERED=${PYTHONUNBUFFERED}

# Upgrade pip to the latest version
RUN pip install --upgrade pip

# Install and configure poetry
RUN pip install "poetry==${POETRY_VERSION}"
RUN poetry config virtualenvs.create false

# Set the entrypoint to run the script
ENTRYPOINT ["bash", "-c"]

# Initialize the Poetry project
CMD ["poetry --version"]