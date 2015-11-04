#!/usr/bin/env python

from setuptools import setup

setup(
    name="aiosockjs",
    version="0.0.0",
    description="SockJS client/server for asyncio",
    long_description="This is a placeholder package",
    author="Adrian Liaw",
    author_email="adrianliaw2000@gmail.com",
    packages=["aiosockjs"],
    install_requires=["aiohttp>=0.18.2"],
    classifiers=[
        "Development Status :: 1 - Planning",
        "Programming Language :: Python :: 3.4",
        "Programming Language :: Python :: 3.5",
    ],
)
