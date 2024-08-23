# Python WebSocket SSH Proxy Server

This project is a WebSocket-based Python proxy server. It listens on a specified address and port, forwarding traffic to a default host.

## Project Structure

```
.gitignore
builder.sh
Dockerfile
main.py
README.md
setup-ssh.sh
test_docker.sh
```

## To-Do
- Implement Golang & Rust based proxy server docker image.
- Handle safe connection termination, to address the zombie process issue.

## Getting Started

### Prerequisites

- Docker
- Python 3.12

### Installation

1. Clone the repository:
    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. Build the Docker image:
    ```sh
    sudo docker build -t wss-docker:latest .
    ```

### Usage

1. Run the Docker container:
    ```sh
    sudo docker run -p 8087:8087 wss-docker:latest
    ```

2. The proxy server will start and listen on the specified address and port.

### Configuration

- Default listening address: `0.0.0.0`
- Default listening port: `8087`
- Default host: `127.0.0.1:22`

### Running the Proxy Server

You can start the proxy server by running the `main.py` script:

```sh
python main.py -p <port>
```

For example, to listen on port 8087:

```sh
python main.py -p 8087
```

### SSH Setup

The `setup-ssh.sh` script installs Dropbear and creates custom SSH credentials. It creates a user `ubuntu` with the password `ubuntu` and configures SSH to listen on port 22.

To run the script:

```sh
./setup-ssh.sh
```

### Dockerfile

The `Dockerfile` sets up the environment for the proxy server. It installs Python and OpenSSH server, copies the project files, and runs the `setup-ssh.sh` script.

### License

This project is licensed under the MIT License.
