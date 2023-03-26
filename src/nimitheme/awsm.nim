import nimib/themes
import nimib

import highlight_js

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
  doc.useDefault()
  doc.context["highlight"] = atelierSulphurpoolLight
  doc.context["stylesheet"] = awsm

proc useAwsmWhite*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["highlight"] = atelierSulphurpoolLight
  doc.context["stylesheet"] = awsmWhite

proc useAwsmGondola*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["highlight"] = atelierDune
  doc.context["stylesheet"] = awsmGondola

proc useAwsmMischka*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["highlight"] = tokyoNightLight
  doc.context["stylesheet"] = awsmMischka

proc useAwsmBigStone*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["highlight"] = tomorrowNightBlue
  doc.context["stylesheet"] = awsmBigStone

proc useAwsmBlack*(doc: var NbDoc) = 
  doc.useDefault()
  doc.darkMode()
  doc.context["highlight"] = atelierPlateau
  doc.context["stylesheet"] = awsmBlack

proc useAwsmTasman*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["highlight"] = equilibruimLight
  doc.context["stylesheet"] = awsmTasman

proc useAwsmPastelPink*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["highlight"] = horizonLight
  doc.context["stylesheet"] = awsmPastelPink

proc useAwsmPearlLusta*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["highlight"] = equilibruimGreyLight
  doc.context["stylesheet"] = awsmPearlLusta
