import sys
import os
from pathlib import Path

# Get the absolute path of the project root
root_dir = str(Path(__file__).parent.parent)

# Add the project root to the Python path
sys.path.insert(0, root_dir)