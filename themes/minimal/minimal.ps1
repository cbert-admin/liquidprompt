# Add user-defined prefix.
PS1="${LP_PS1_PREFIX}"
# Add multiplexer brackets, user, host, permissions colon, working directory.
PS1+="${LP_BRACKET_OPEN}${LP_USER}${LP_HOST}${LP_PERM}${LP_PWD}${LP_BRACKET_CLOSE}"

# Add VCS infos.
# If root, the info has not been collected unless LP_ENABLE_VCS_ROOT
# is set.
PS1+="${LP_VCS}"

# Add runtime, return code, prompt mark and user-defined postfix.
PS1+="${LP_RUNTIME}${LP_ERR}${LP_MARK_PREFIX}${LP_COLOR_MARK}${LP_MARK}${LP_PS1_POSTFIX}"

# Get the core sections without prompt escapes and make them into a title.
_lp_formatted_title "${LP_PS1_PREFIX}${LP_BRACKET_OPEN}${LP_USER}${LP_HOST}${LP_MARK_PERM}${lp_path-}${LP_BRACKET_CLOSE}${LP_MARK_PREFIX}${LP_MARK}${LP_PS1_POSTFIX}"
