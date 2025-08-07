# create_env.sh

A simple Bash script to create (or recreate) Python virtual environments in a fixed directory.

## 📂 Directory

All virtual environments will be created inside:

```
$HOME/py
```

If this directory does not exist, you should create it manually before using the script or change the fisrt line for an existing directory.

## 🚀 Usage

```bash
./create_env.sh <venv_name>
```

Replace `<venv_name>` with the name of the virtual environment you want to create.

### Example

```bash
./create_env.sh myenv
```
This will create a virtual environment named `myenv` inside the `$HOME/py` directory.

## 🔁 Removing Environments

If a virtual environment with the same name already exists, the script will prompt you to confirm whether you want to remove it:

```bash
Virtual environment 'myenv' already exists.
Do you want to remove it? (y/N)
```

Respond with `y` or `Y` to proceed, or anything else to cancel.

## ✅ Activation

Once the environment is created, you can activate it with:

```bash
source $HOME/py/<venv_name>/bin/activate
```

## ⚠️ Requirements

- Python 3 must be installed and available as `python3`.
- Bash must be available (`#!/usr/bin/env bash`).

## 🧾 License

This script is free to use, modify, and distribute.

## 🤝 Contributing
Feel free to fork, improve, or adapt the script to your needs. Pull requests and suggestions are welcome!
