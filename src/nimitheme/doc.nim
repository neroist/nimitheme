## Module for customizing the nimib document (e.g. favicon)

import std/strformat

import nimib

type
  HtmlAttributes = openArray[(string, string)]

proc `$`(map: HtmlAttributes): string =
  for i in map:
    result.add fmt "{i[0]}=\"{i[1]}\""

# if `title=` is removed
when false:
  proc `title=`*(doc: var NbDoc, text: string) =
    doc.context["title"] = text

proc `favicon=`*(doc: var NbDoc, url: string, attributes: HtmlAttributes = {:}) =
  doc.context["favicon"] = fmt"""<link rel="icon" {attributes} href="{url}">"""

proc `head=`*(doc: var NbDoc, html: string) = doc.partials["head"] = html
proc `docuement=`*(doc: var NbDoc, html: string) = doc.partials["document"] = html
proc `main=`*(doc: var NbDoc, html: string) = doc.partials["main"] = html
proc `header=`*(doc: var NbDoc, html: string) = doc.partials["header"] = html
proc `headerLeft=`*(doc: var NbDoc, html: string) = doc.partials["header_left"] = html
proc `headerCenter=`*(doc: var NbDoc, html: string) = doc.partials["header_center"] = html
proc `headerRight=`*(doc: var NbDoc, html: string) = doc.partials["header_right"] = html
proc `pathToRoot=`*(doc: var NbDoc, url: string) = doc.context["path_to_root"] = url
proc `pathToHere=`*(doc: var NbDoc, url: string) = doc.context["path_to_here"] = url
proc `githubLogo=`*(doc: var NbDoc, html: string) = doc.context["github_remote_url"] = html
proc `footer=`*(doc: var NbDoc, html: string) = doc.partials["footer"] = html
proc `footerLeft=`*(doc: var NbDoc, html: string) = doc.partials["footer_left"] = html
proc `footerCenter=`*(doc: var NbDoc, html: string) = doc.partials["footer_center"] = html
proc `footerRight=`*(doc: var NbDoc, html: string) = doc.partials["footer_right"] = html
proc `githubRemoteUrl=`*(doc: var NbDoc, html: string) = doc.context["github_logo"] = html
proc `version=`*(doc: var NbDoc, html: string) = doc.context["version"] = html
proc `stylesheet=`*(doc: var NbDoc, html: string) = doc.context["stylesheet"] = html
proc `highlight=`*(doc: var NbDoc, html: string) = doc.context["highlight"] = html
proc `highlightJs=`*(doc: var NbDoc, html: string) = doc.context["highlightJs"] = html
proc `nbStyle=`*(doc: var NbDoc, css: string) = doc.context["nb_style"] = css
proc `sourceSection=`*(doc: var NbDoc, html: string) = doc.partials["source_section"] = html
proc `showSourceScript=`*(doc: var NbDoc, html: string) = doc.partials["show_source_script"] = html

proc head*(doc: var NbDoc): string = doc.partials["head"]
proc docuement*(doc: var NbDoc): string = doc.partials["document"]
proc main*(doc: var NbDoc): string = doc.partials["main"]
proc header*(doc: var NbDoc): string = doc.partials["header"]
proc headerLeft*(doc: var NbDoc): string = doc.partials["header_left"]
proc headerCenter*(doc: var NbDoc): string = doc.partials["header_center"]
proc headerRight*(doc: var NbDoc): string = doc.partials["header_right"]
proc pathToRoot*(doc: var NbDoc): string = doc.context["path_to_root"].vString
proc pathToHere*(doc: var NbDoc): string = doc.context["path_to_here"].vString
proc githubLogo*(doc: var NbDoc): string = doc.context["github_remote_url"].vString
proc footer*(doc: var NbDoc): string = doc.partials["footer"]
proc footerLeft*(doc: var NbDoc): string = doc.partials["footer_left"]
proc footerCenter*(doc: var NbDoc): string = doc.partials["footer_center"]
proc footerRight*(doc: var NbDoc): string = doc.partials["footer_right"]
proc githubRemoteUrl*(doc: var NbDoc): string = doc.context["github_logo"].vString
proc version*(doc: var NbDoc): string = doc.context["version"].vString
proc stylesheet*(doc: var NbDoc): string = doc.context["stylesheet"].vString
proc highlight*(doc: var NbDoc): string = doc.context["highlight"].vString
proc highlightJs*(doc: var NbDoc): string = doc.context["highlightJs"].vString
proc nbStyle*(doc: var NbDoc): string = doc.context["nb_style"].vString
proc sourceSection*(doc: var NbDoc): string = doc.partials["source_section"]
proc showSourceScript*(doc: var NbDoc): string = doc.partials["show_source_script"]

proc noSourceSection*(doc: var NbDoc) =
  doc.context["no_source"] = " "

  # this is eq. to:
  #
  # doc.partials["footer_left"] = ""
  # doc.partials["source_section"] = ""
  # doc.partials["show_source_script"] = ""
