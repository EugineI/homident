pip install -r requirements.txt
python3.12 manage.py collectstatic
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found. Please ensure Python3 is installed."
    exit 1
fi

if ! command -v pip &> /dev/null
then
    echo "pip could not be found, installing pip..."
    apt-get update && apt-get install -y python3-pip
fi
