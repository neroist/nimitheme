import nimib/themes
import nimib

import ./utils

const
  comet* = """<link href="https://npmcdn.com/comet-css@1.2.0/dist/comet.min.css" rel="stylesheet">"""
  cometStyle* = """
  <style>
    body {
      padding: 20px;
    }

    .nb-small {
      font-size: 1.2rem;
    }
  </style>
  """

proc useComet*(doc: var NbDoc) = 
  useStyle comet, cometStyle
  