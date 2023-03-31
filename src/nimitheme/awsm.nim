import nimib/themes
import nimib

import highlight_js
import ./utils

const
  awsm* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm.min.css" />"""
  awsmWhite* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm_theme_white.min.css" />"""
  awsmGondola* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm_theme_gondola.min.css" />"""
  awsmMischka* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm_theme_mischka.min.css" />"""
  awsmBigStone* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm_theme_big-stone.min.css" />"""
  awsmBlack* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm_theme_black.min.css" />"""
  awsmTasman* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm_theme_tasman.min.css" />"""
  awsmPastelPink* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm_theme_pastel-pink.min.css" />"""
  awsmPearlLusta* = """<link rel="stylesheet" type="text/css" href="https://unpkg.com/awsm.css/dist/awsm_theme_pearl-lusta.min.css" />"""

proc useAwsm*(doc: var NbDoc) =
  doc.highlight = atelierSulphurpoolLight
  useStyle awsm

proc useAwsmWhite*(doc: var NbDoc) = 
  doc.highlight = atelierSulphurpoolLight
  useStyle awsmWhite

proc useAwsmGondola*(doc: var NbDoc) = 
  doc.highlight = atelierDune
  useStyle awsmGondola, useDarkMode = true

proc useAwsmMischka*(doc: var NbDoc) = 
  doc.highlight = tokyoNightLight
  useStyle awsmMischka, useDarkMode = true

proc useAwsmBigStone*(doc: var NbDoc) = 
  doc.highlight = tomorrowNightBlue
  useStyle awsmBigStone, useDarkMode = true

proc useAwsmBlack*(doc: var NbDoc) = 
  doc.highlight = atelierPlateau
  useStyle awsmBlack, useDarkMode = true

proc useAwsmTasman*(doc: var NbDoc) = 
  doc.highlight = equilibruimLight
  useStyle awsmTasman

proc useAwsmPastelPink*(doc: var NbDoc) = 
  doc.highlight = horizonLight
  useStyle awsmPastelPink

proc useAwsmPearlLusta*(doc: var NbDoc) = 
  doc.highlight = equilibruimGreyLight
  useStyle awsmPearlLusta
