return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot", -- :Copilot 호출 때만 로드
    build = ":Copilot auth", -- 설치 뒤 자동 인증 창 띄우기
    event = "InsertEnter", -- 글 입력 시작 시 백그라운드 로드
    opts = {
      suggestion = {
        auto_trigger = true, -- 입력하면 바로 제안
        keymap = { accept = "<Tab>" }, -- 탭으로 수락
      },
      panel = { enabled = false }, -- 패널 off → 경량
    },
  },
}
