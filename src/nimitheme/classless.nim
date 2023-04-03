import nimib/themes
import nimib

import ./utils

const
  classlessFull* = """<link rel="stylesheet" href="https://classless.de/classless.css">"""
  classlessTiny* = """<link rel="stylesheet" href="https://classless.de/classless-tiny.css">"""

proc useClassless*(doc: var NbDoc) = 
  useStyle classlessFull

proc useClasslessFull*(doc: var NbDoc) = 
  useStyle classlessFull

proc useClasslessTiny*(doc: var NbDoc) = 
  useStyle classlessTiny