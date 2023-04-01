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
  useStyle awsm
  doc.highlight = atelierSulphurpoolLight

proc useAwsmWhite*(doc: var NbDoc) = 
  useStyle awsmWhite
  doc.highlight = atelierSulphurpoolLight

proc useAwsmGondola*(doc: var NbDoc) = 
  useStyle awsmGondola, useDarkMode = true
  doc.highlight = atelierDune

proc useAwsmMischka*(doc: var NbDoc) = 
  useStyle awsmMischka, useDarkMode = true
  doc.highlight = tokyoNightLight

proc useAwsmBigStone*(doc: var NbDoc) = 
  useStyle awsmBigStone, useDarkMode = true
  doc.highlight = tomorrowNightBlue

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
