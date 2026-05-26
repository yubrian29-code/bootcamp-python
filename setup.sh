#!/bin/zsh
set -e

if [ -d "bootcamp-env" ]; then
  echo "🔁 Removing old virtual environment..."
  rm -rf bootcamp-env
fi

echo "📦 Creating new virtual environment..."
/opt/homebrew/bin/python3 -m venv bootcamp-env

echo "✅ Activating virtual environment..."
source bootcamp-env/bin/activate

echo "📦 Upgrading pip and installing requirements..."
pip install --upgrade pip
pip install -r requirements.txt

python3 -m ipykernel install --user --name=bootcamp-env --display-name "Python (bootcamp-env)"

pip --version
python3 --version
jupyter --version

echo "✅ Environment Setup complete."
