proc mergesort {list} {
    if {[llength $list] <= 1} {
        return $list
    }
    set mid [expr {[llength $list] / 2}]
    set left [mergesort [lrange $list 0 [expr {$mid - 1}]]]
    set right [mergesort [lrange $list $mid end]]
    return [merge $left $right]
}

proc merge {left right} {
    set result [list]
    while {[llength $left] > 0 && [llength $right] > 0} {
        if {[lindex $left 0] <= [lindex $right 0]} {
            lappend result [lindex $left 0]
            set left [lrange $left 1 end]
        } else {
            lappend result [lindex $right 0]
            set right [lrange $right 1 end]
        }
    }
    return [concat $result $left $right]
}
set unsortedList {3 6 8 7 0 1 4 2 9 5}
puts "Before Sorting:"
puts $unsortedList
puts --------------------
puts "After Sorting:"
puts [mergesort $unsortedList]