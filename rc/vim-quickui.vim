vim9script
hi! link QuickBG Normal
hi! link QuickBorder Normal

var projects_file = $MYVIMDIR .. 'projects.json'
g:cur_project_path = fuzzyy#utils#selector#GetRootDir()
g:cur_project = fnamemodify(g:cur_project_path, ':t')
g:projects = json_decode(join(readfile(projects_file), "\n"))
g:project_name = keys(g:projects)

def UpdateCurProject()
  var cur_dir = fuzzyy#utils#selector#GetRootDir()
  var cur_name = fnamemodify(cur_dir, ':t')
  if cur_name !=# g:cur_project
    g:cur_project_path = cur_dir
    g:cur_project = cur_name
  endif
enddef

def GetProjectDir(project_name: string): string
  var result: string

  if has_key(g:projects, project_name)
    result = g:projects[project_name]
  else
    echoerr 'Project not found'
    return ''
  endif
  return result
enddef

def ListProjects()
  quickui#listbox#open(g:project_name, {
    title: 'Projects',
    callback: function('SwitchProject')
  })
enddef

def SwitchProject(index: number)
  var project = g:project_name[index]
  var project_dir = GetProjectDir(project)
  var cmd = ''
  var option = quickui#input#open('f: Find file g: Find regexp m: Find MRU t: Find tag')
  if option == 'f'
    cmd = 'FuzzyFilesRoot'
  elseif option == 'g'
    cmd = 'FuzzyGrepRoot'
  elseif option == 'm'
    cmd = 'FuzzyMruRoot'
  elseif option == 't'
    cmd = 'FuzzyTagsRoot'
  endif
  if cmd != ''
    execute cmd .. ' ' .. project_dir
  endif
enddef

def RunCommand()
  var path = GetProjectDir(g:cur_project)
  var cmd = input('Command to Compile (default: make -k): ', 'make -k')
  if cmd == ''
    return
  else
    execute 'AsyncRun -cwd=' .. path .. ' ' .. cmd
  endif
enddef

command! -nargs=0 ProjectSwitch ListProjects()
command! -nargs=0 ProjectCompile RunCommand()
command! -nargs=0 ProjectFindFile execute 'FuzzyFilesRoot ' .. g:cur_project_path
command! -nargs=0 ProjectFindRegexp execute 'FuzzyGrepRoot ' .. g:cur_project_path
command! -nargs=0 ProjectFindMru execute 'FuzzyMruRoot ' .. g:cur_project_path
command! -nargs=0 ProjectFindTag execute 'FuzzyTagsRoot ' .. g:cur_project_path
command! -nargs=0 ProjectShell botright call term_start(&shell, { 'cwd': g:cur_project_path, 'term_finish': 'close', 'term_rows': 10 })

autocmd BufEnter * UpdateCurProject()
