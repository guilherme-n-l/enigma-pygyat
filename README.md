# Enigma-PyGyat - +1000 AURA Enigma machine

The Enigma-PyGyat is an advanced cryptographic project built in the pythonic PyGyat dialect designed to simulate the functionality of the original Enigma machine. By utilizing the concept of the +1000 AURA mindset, this machine is capable of providing secure encryption and decryption processes.

# Setup

## Prerequisites

- Python 3.x (Preferably the latest stable release)

## Steps

- Clone the Repository

    ```sh
    git clone https://github.com/guilherme-n-l/enigma-pygyat.git
    cd enigma-pygyat
    ```

- Set Up a Virtual Environment

   On **Windows**:

   ```bash
   python -m venv venv
   .\venv\Scripts\activate
   pip install -r requirements.txt
   ```

   On **Mac/Linux**:

   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```

- Run application

   ```bash
   make
   ```

## For developers

If you wish to contribute to the development of the **Enigma-PyGyat** machine, you can modify the core logic by editing the `.gyat` files. These files are the foundation of the machine's encryption and decryption algorithms.

1. **Edit the `.gyat` files** in the `./src/machine` directory. These files contain the cryptographic logic and can be adjusted to implement new features or fine-tune existing ones.

2. After making changes to the `.gyat` files, **compile and run** them using the following command:

   ```bash
   ./translate
   ```

   This will process the updated and run the project.
