from setuptools import setup
from Cython.Build import cythonize
setup(
    ext_modules = cythonize(["main_c.pyx","main_c_static.pyx"])
)
