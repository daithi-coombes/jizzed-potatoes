_script()
{
  _script_commands=$(/opt/jizzed-potatoes/spunk shortlist)

  echo $_script_commands

  local cur prev
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "${_script_commands}" -- ${cur}) )

  return 0
}
complete -o nospace -F _script /opt/jizzed-potatoes/spunk
