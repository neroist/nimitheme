# Theme based on the Hypnagogic Archive

import nimib/themes
import nimib

import ./utils

const
  hypnagogicBlack* = """
  <style>
    body {
      background-color: black;
      color: yellow;
      font-family: Helvetica;
    }
  </style>
"""
  hypnagogicBlue* = """
  <style>
    body {
      background-color: blue;
      color: yellow;
      font-family: Helvetica;
    }
  </style>
"""

proc useHypnagogic*(doc: var NbDoc) = 
  useStyle hypnagogicBlack, useDarkMode = true

proc useHypnagogicBlack*(doc: var NbDoc) = 
  useStyle hypnagogicBlack, useDarkMode = true

proc useHypnagogicBlue*(doc: var NbDoc) = 
  useStyle hypnagogicBlue, useDarkMode = true
