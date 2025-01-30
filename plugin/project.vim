vim9script

def ShowPopup()
  var id = popup_create(["Hello, Vim9 popup!"], {
    pos: 'botleft',
    line: 10,
    border: [],
    time: 3000
  })
enddef

def StyledPopup()
  var id = popup_create(["This is a Styled Popup"], {
    pos: "center",
    title: 'hi',
    border: [1, 1, 1, 1],  # Top, Right, Bottom, Left
    padding: [1, 2, 1, 2], # Top, Right, Bottom, Left
    highlight: "WarningMsg",
    borderhighlight: ["Identifier"],
    wrap: true,
    time: 3000
  })
enddef

def OnSelect(id: number, result: string)
  echo "You selected: " .. result
enddef

def PopupMenu()
  var items = ["Option 1", "Option 2", "Option 3"]

  popup_create(items, {
    title: "Select an Option",
    pos: "center",
    border: [1, 1, 1, 1],
    select: 1,    # Enable selection
    select_cb: function('OnSelect')
  })
enddef

def OnClose(id: number)
  var userInput = input("Enter something: ")
  echo "You entered: " .. userInput
enddef

def InputPopup()
  popup_create(["Press Enter to input"], {
    title: "Input",
    pos: "center",
    border: [1, 1, 1, 1],
    close_cb: OnClose
  })
enddef

command! ShowPopup ShowPopup()
command! StyledPopup StyledPopup()
command! PopupMenu PopupMenu()
command! InputPopup InputPopup()

