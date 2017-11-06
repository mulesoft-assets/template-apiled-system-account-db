%dw 2.0
fun escapeSQL(data: String):String = data replace '\'' with '\'\''