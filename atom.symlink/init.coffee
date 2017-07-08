atom.packages.onDidActivateInitialPackages ->
  workspaceView = atom.views.getView atom.workspace
  atom.commands.dispatch workspaceView, 'tree-view:toggle'
