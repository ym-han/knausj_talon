# Adapted from Wen Kokke's scripts
from talon import Context, Module

from ....util import csv

mod = Module()
mod.tag("code_operator", desc="Tag which provides a general list for operators")
mod.list("code_operator", desc="List of operators")
