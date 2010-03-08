if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat&		" use the default 'errorformat'
CompilerSet makeprg=twee\ %\ >\ %:r.html
let current_compiler = "twee"
