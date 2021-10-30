vim.cmd([[
  syntax match OrgQuoteBlock /^>\ze\s/ conceal cchar=▍
  syntax match OrgCheckbox /^-\s\[\s\]\ze\s/ conceal cchar=☐
  syntax match OrgCheckboxChecked /^-\s\[x\]\ze\s/ conceal cchar=☑
]])
