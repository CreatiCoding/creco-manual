local inputEnglish = "com.apple.keylayout.ABC"
local slackAppName = "Slack"

hs.window.filter.default:subscribe(hs.window.filter.windowFocused, function(window, appName)
  if appName ~= slackAppName then
    hs.keycodes.currentSourceID(inputEnglish)
  else
    hs.keycodes.currentSourceID("com.apple.inputmethod.Korean.2SetKorean")
  end
end)
