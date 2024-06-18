import nimib/themes
import nimib

import ../utils

const
  concrete* = """<link rel="stylesheet" href="https://unpkg.com/normalize.css@8.0.1/normalize.css">
<link rel="stylesheet" href="https://unpkg.com/concrete.css@2.0.3/concrete.css">"""
  concreteLight* = """<link rel="stylesheet" href="https://unpkg.com/normalize.css@8.0.1/normalize.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/neroist/nimitheme/assets/concrete-light.min.css">"""
  concreteDark* = """<link rel="stylesheet" href="https://unpkg.com/normalize.css@8.0.1/normalize.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/neroist/nimitheme/assets/concrete-dark.min.css">"""
  concreteStyle* = """
  <style>
    footer, header, section#source {
      margin: 10px;
    }
  </style>
  """

proc useConcrete*(doc: var NbDoc) = 
  useStyle concrete, concreteStyle
  

proc useConcreteLight*(doc: var NbDoc) = 
  useStyle concreteLight, concreteStyle
  

proc useConcreteDark*(doc: var NbDoc) = 
  useStyle concreteDark, concreteStyle, useDarkMode = true
  
