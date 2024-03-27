# From: https://classless.de/

import nimib/themes
import nimib

import ./utils

const
  classlessFull* = """<link rel="stylesheet" href="https://classless.de/classless.css">"""
  classlessTiny* = """<link rel="stylesheet" href="https://classless.de/classless-tiny.css">"""
  classlessTinyStyle* = """
<style>
  body > footer { margin: 10rem 0rem 1rem; }
</style>
"""

proc useClassless*(doc: var NbDoc) = 
  useStyle classlessFull
  

proc useClasslessFull*(doc: var NbDoc) = 
  useStyle classlessFull
  

proc useClasslessTiny*(doc: var NbDoc) = 
  useStyle classlessTiny, classlessTinyStyle
  
