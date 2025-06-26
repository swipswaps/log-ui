#!/usr/bin/env python3
"""
Setup script for Log-UI - Professional Log Analysis Interface
"""

from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

with open("requirements.txt", "r", encoding="utf-8") as fh:
    requirements = [line.strip() for line in fh if line.strip() and not line.startswith("#")]

setup(
    name="log-ui",
    version="1.0.0",
    author="swipswaps",
    author_email="",
    description="Professional log analysis interface with real-time crash detection and intelligent solutions",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/swipswaps/log-ui",
    packages=find_packages(),
    classifiers=[
        "Development Status :: 4 - Beta",
        "Intended Audience :: System Administrators",
        "Intended Audience :: Developers",
        "Topic :: System :: Logging",
        "Topic :: System :: Monitoring",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Operating System :: POSIX :: Linux",
    ],
    python_requires=">=3.8",
    install_requires=requirements,
    extras_require={
        "dev": [
            "pytest>=7.0.0",
            "black>=22.0.0",
            "flake8>=5.0.0",
        ],
        "accessibility": [
            "dogtail>=1.0.0",
        ],
    },
    entry_points={
        "console_scripts": [
            "log-ui=professional_log_interface:main",
            "log-ui-analyzer=lnav_based_analyzer:main",
        ],
    },
    include_package_data=True,
    zip_safe=False,
)
