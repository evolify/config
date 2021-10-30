local cmd = vim.cmd
local wo = vim.wo

require('orgmode').setup({
  org_agenda_files = {'~/org/*'},
  org_default_notes_file = '~/org/refile.org',
  org_indent_mode = "noindent",
  org_agenda_templates = {
    T = { description = 'Todo', template = '* TODO %? %u', target = '~/org/todo.org' },
    j = { description = 'Journal', template = '\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?', target = '~/org/journal.org' },
    m = { description = 'Work', template = '* TODO %? %t', target = '~/org/mi.org' },
  }
})

require("org-bullets").setup({
  symbols = { "◉", "○", "◎", "☉", "❄", "✸", "✿" }
})


wo.concealcursor = "nc"
wo.conceallevel = 2

