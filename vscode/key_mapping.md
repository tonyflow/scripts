## VSCode Keybindings
workbench.action.showAllSymbols: Find classes
workbench.action.quickOpen: Find files
workbench.view.explorer: go to project window
cursor.focusChat: go to chat window
workbench.action.gotoSymbol: list methods/functions
workbench.action.navigateBack: go to previous location
workbench.action.navigateForward: go to next location
workbench.action.closeActiveEditor: close current editor tab
editor.action.revealDefinition: go to definition
editor.action.referenceSearch.trigger: Find all usages
workbench.action.toggleZenMode: Remove side and bottom panes
workbench.action.findInFiles: search entire workspace
workbench.action.gotoLine: go to line
workbench.action.showAllEditorsByMostRecentlyUsed: show list of recent editors

## Settings
iach: true
zenMode.fullScreen: false
minimap: false. This disables the mini version of code usually shown on the right side of every editor
github.copilot.inlineSuggest.enable: false
files.autoSave: "afterDelay",
files.autoSaveDelay: 1000 // (optional) save after 1 second of inactivity

### Ruff based formatting
"python.linting.enabled": true,
"python.linting.flake8Enabled": false,
"python.linting.pylintEnabled": false,
"ruff.enable": true,
"ruff.args": [],
"editor.codeActionsOnSave": {
  "source.fixAll": true
}

## pytest
"python.testing.unittestEnabled": false,
    "python.testing.pytestEnabled": true,
    "python.testing.autoTestDiscoverOnSaveEnabled": true,
    "python.testing.pytestArgs": [
        "."
    ]


ruff.lint.enable
editor.inlineSuggest.enabled
editor.renderWhitespace: none

