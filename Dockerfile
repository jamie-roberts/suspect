FROM python:3.12-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /workspace

# System packages often needed for scientific Python builds
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Upgrade packaging tools
RUN python -m pip install --upgrade pip setuptools wheel

# Install your fork of suspect directly from GitHub
RUN pip install git+https://github.com/jamie-roberts/suspect.git

# Make a notebooks folder
RUN mkdir -p /notebooks /data

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=", "--NotebookApp.password=", "--notebook-dir=/notebooks"]
