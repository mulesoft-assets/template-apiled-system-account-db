%dw 2.0
import java!org::apache::commons::lang3::StringEscapeUtils
fun escapeSQL(data: String):String = StringEscapeUtils::escapeJson(data)