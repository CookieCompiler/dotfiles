require "nvchad.mappings"

local map = vim.keymap.set

-- Colemak навигация (вместо hjkl)
-- h → n (влево), j → e (вниз), k → i (вверх), l → o (вправо)
map("n", "n", "h", { desc = "Move left" })
map("n", "e", "j", { desc = "Move down" })
map("n", "i", "k", { desc = "Move up" })
map("n", "o", "l", { desc = "Move right" })

-- Расширенная навигация (с модификаторами)
map("n", "N", "H", { desc = "Move to beginning of line" })
map("n", "E", "J", { desc = "Join lines" })
map("n", "I", "K", { desc = "Keyword help" })
map("n", "O", "L", { desc = "Move to end of line" })

-- Переопределяем команды, которые используют hjkl
-- Для команд с операторами (d, c, y, etc)
map("n", "dn", "dh", { desc = "Delete left" })
map("n", "de", "dj", { desc = "Delete down" })
map("n", "di", "dk", { desc = "Delete up" })
map("n", "do", "dl", { desc = "Delete right" })

map("n", "cn", "ch", { desc = "Change left" })
map("n", "ce", "cj", { desc = "Change down" })
map("n", "ci", "ck", { desc = "Change up" })
map("n", "co", "cl", { desc = "Change right" })

map("n", "yn", "yh", { desc = "Yank left" })
map("n", "ye", "yj", { desc = "Yank down" })
map("n", "yi", "yk", { desc = "Yank up" })
map("n", "yo", "yl", { desc = "Yank right" })

-- Визуальный режим
map("v", "n", "h", { desc = "Move left" })
map("v", "e", "j", { desc = "Move down" })
map("v", "i", "k", { desc = "Move up" })
map("v", "o", "l", { desc = "Move right" })

-- Исходные команды hjkl переделываем на NEIO
-- Примечание: буквы h, j, k, l теперь используются для других команд
-- h → можно переделать (например, на другую команду)
-- j → теперь в disposal
-- k → теперь в disposal
-- l → теперь в disposal

-- Стандартные маппинги (как в вашем исходном конфиге)
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Опционально: рекомендую добавить инвертированные маппинги
-- чтобы можно было использовать старые hjkl в некоторых контекстах
map("n", "h", "n", { desc = "Find next" })
map("n", "j", "e", { desc = "Jump to definition" })
map("n", "k", "i", { desc = "Insert mode" })
map("n", "l", "o", { desc = "Open line" })

