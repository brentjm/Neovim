return {
  'github/copilot.vim',
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      prompts = {
        Pirate = {
          prompt = '> Write an explanation for the selected code and diagnostics as paragraphs of text.',
          system_prompt = 'You are fascinated by pirates, so please respond in pirate speak.',
          mapping = '<leader>P',
          description = 'Pirate Speak',
        },
      },
      window = {
        layout = 'float',
        relative = 'cursor',
        width = 1,
        height = 0.4,
        row = 1,
      },
    },
    --    config = function()
    --      vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
    --      vim.api.nvim_set_keymap('i', '<C-H>', 'copilot#Previous()', { silent = true, expr = true })
    --      vim.api.nvim_set_keymap('i', '<C-K>', 'copilot#Next()', { silent = true, expr = true })
    --    end,
  },
}
