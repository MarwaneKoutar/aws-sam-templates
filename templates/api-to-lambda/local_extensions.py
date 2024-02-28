import platform
import os
from cookiecutter.utils import simple_filter

@simple_filter
def architecture(v):
    arch = platform.machine().lower()
    if 'aarch' in arch or 'arm' in arch:
        return 'arm64'
    else:
        return v
    
@simple_filter
def get_abs_path(v):
    if os.getcwd():
        return os.getcwd()
    else:
        return v