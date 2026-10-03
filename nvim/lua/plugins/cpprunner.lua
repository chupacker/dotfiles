return {
  "chupacker/cpprunner",
  ft = { "cpp", "c" }, -- Lazy-load on C/C++ filetypes
  opts = {
    keymap = "<F11>",
    compiler = "g++",
    std = "c++17",
    extra_flags = "-Wall",
    split_height = 15,
  },
}
