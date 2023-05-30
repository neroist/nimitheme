import nimib/themes
import nimib

import ./utils

const
  concrete* = """<link rel="stylesheet" href="https://unpkg.com/normalize.css@8.0.1/normalize.css">
<link rel="stylesheet" href="https://unpkg.com/concrete.css@2.0.3/concrete.css">"""
  concreteStyle* = """
  <style>
    footer, header, section#source {
      margin: 10px;
    }
  </style>
  """

proc useConcrete*(doc: var NbDoc) = 
  useStyle concrete, concreteStyle, useDarkMode = true
