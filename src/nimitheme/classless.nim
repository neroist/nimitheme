# From: https://classless.de/

import nimib/themes
import nimib

import ./utils

const
  classlessFull* = """<link rel="stylesheet" href="https://classless.de/classless.css">"""
  classlessTiny* = """<link rel="stylesheet" href="https://classless.de/classless-tiny.css">"""

proc useClassless*(doc: var NbDoc) = 
  useStyle classlessFull
  doc.fixCode()

proc useClasslessFull*(doc: var NbDoc) = 
  useStyle classlessFull
  doc.fixCode()

proc useClasslessTiny*(doc: var NbDoc) = 
  useStyle classlessTiny
  doc.fixCode()
