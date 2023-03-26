import nimib/themes
import nimib

const 
  mvp* = """<link rel="stylesheet" href="https://unpkg.com/mvp.css@1.12/mvp.css">"""
  mvpStyle* = """
<style>
  hr {
    margin-top: 15px !important;
    margin-bottom: 15px !important;
  }

  header {
    padding: 15px !important;
  }

  main, footer {
    padding-top: 0px !important;
  }
</style>
"""
  mvpShowSourceScript = """<script>
function toggleSourceDisplay() {
  var btn = document.getElementById("show")
  var source = document.getElementById("source");

  if (btn.innerHTML == "Show Source") {
    btn.innerHTML = "Hide Source";
    source.style.display = "flex";
  } else {
    btn.innerHTML = "Show Source";
    source.style.display = "none";
  }
}
</script>"""

proc useMvp*(doc: var NbDoc) = 
  doc.useDefault()
  doc.context["stylesheet"] = mvp
  doc.context["nb_style"] = doc.context["nb_style"].vString & '\n' & mvpStyle
  doc.partials["show_source_script"] = optOut(mvpShowSourceScript, "no_source")
