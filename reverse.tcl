
proc reverseSentence {sentence} {
    set words [split $sentence " "]
    set reversedWords ""
    set wordsStartIndex [ expr [llength $words] - 1]
    for {set index $wordsStartIndex } {$index >= 0 } {incr index -1 } {
        append reversedWords [lindex $words $index] " "
    }
    return $reversedWords
}
set sentence "TCL is a Tool Command Language"
set sentence1 "Welcome to you"
puts "Before reverse:"
puts $sentence
puts $sentence1
puts ---------
puts "After reverse:"
puts [reverseSentence $sentence]
puts [reverseSentence $sentence1]