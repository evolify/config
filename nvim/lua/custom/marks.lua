require'marks'.setup {
  cyclic = true, -- whether movements cycle back to the beginning/end of buffer. default true
  force_write_shada = false, -- whether the shada file is updated after modifying uppercase marks. default false
  bookmark_0 = { -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own sign/virttext
    sign = "⚑",
    virt_text = "bookmark-0"
  },
  mappings = {
    set_bookmark0 = "m0",
    delete_line = "m-",
    delete_buf = "m<space>"
  }
}
