function __ghq_vscode_open_file -d "Open a file in a git repository by vscode"
  set repo (ghq list --full-path | peco)
  if test -n "$repo"
    cd
    set file (cd $repo; and peco)
    if test -n "$file"
      code "$repo"/"$file"
    end
  end
end
