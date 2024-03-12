# From: https://igoradamenko.github.io/awsm.css/

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
  doc.fixCode()

proc useAwsmWhite*(doc: var NbDoc) = 
  useStyle awsmWhite
  doc.highlight = atelierSulphurpoolLight
  doc.fixCode()

proc useAwsmGondola*(doc: var NbDoc) = 
  useStyle awsmGondola, useDarkMode = true
  doc.highlight = atelierDune
  doc.fixCode()

proc useAwsmMischka*(doc: var NbDoc) = 
  useStyle awsmMischka
  doc.highlight = equilibruimGreyLight
  doc.fixCode()

proc useAwsmBigStone*(doc: var NbDoc) = 
  useStyle awsmBigStone, useDarkMode = true
  doc.highlight = tomorrowNightBlue
  doc.fixCode()

proc useAwsmBlack*(doc: var NbDoc) = 
  doc.highlight = atelierPlateau
  useStyle awsmBlack, useDarkMode = true
  doc.fixCode()

proc useAwsmTasman*(doc: var NbDoc) = 
  doc.highlight = equilibruimLight
  useStyle awsmTasman
  doc.fixCode()

proc useAwsmPastelPink*(doc: var NbDoc) = 
  doc.highlight = horizonLight
  useStyle awsmPastelPink
  doc.fixCode()

proc useAwsmPearlLusta*(doc: var NbDoc) = 
  doc.highlight = equilibruimGreyLight
  useStyle awsmPearlLusta
  doc.fixCode()
