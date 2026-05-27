# Mac OS
#!/bin/bash
set -e

if type deactivate &> /dev/null; then
  echo "🔁 Deactivating enviroment..."
  deactivate
fi

if [ -d "bootcamp-env" ]; then
  echo "🔁 Removing old virtual environment (if any)..."
  rm -rf bootcamp-env
fi

echo "📦 Creating new virtual environment..."
python3 -m venv bootcamp-env

python3 -m pip install --upgrade pip

echo "✅ Activating virtual environment..."
source bootcamp-env/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

python3 -m ipykernel install --user --name=bootcamp-env --display-name "Python (bootcamp-env)"

# python --version
pip --version
python --version
jupyter --version

echo "✅ Environment Setup complete."