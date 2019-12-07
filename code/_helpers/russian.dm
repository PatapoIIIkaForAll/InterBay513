/proc/rhtml_encode(var/msg)
	return msg

/proc/rhtml_decode(var/msg)
	return msg

/proc/ruppertext(text as text)
	var/t = ""
	for(var/i = 1, i <= length(text), i++)
		var/a = text2ascii(text, i)
		if (a == 1105 || a == 1025)
			t += ascii2text(1025)
			continue
		if (a < 1072 || a > 1105)
			t += ascii2text(a)
			continue
		t += ascii2text(a - 32)
	return uppertext(t)


/proc/rlowertext(text as text)
	var/t = ""
	for(var/i = 1, i <= length(text), i++)
		var/a = text2ascii(text, i)
		if (a == 1105 || a == 1025)
			t += ascii2text(1105)
			continue
		if (a < 1040 || a > 1071)
			t += ascii2text(a)
			continue
		t += ascii2text(a + 32)
	return lowertext(t)


//RUS CONVERTERS
/proc/russian_to_cp1251(var/msg)//CHATBOX
	return msg

/proc/russian_to_utf8(var/msg)//PDA PAPER POPUPS
	return msg

/proc/utf8_to_cp1251(msg)
	return msg

/proc/cp1251_to_utf8(msg)
	return msg

//Prepare text for edit. Replace "y" with "\?" for edition. Don't forget to call post_edit().
/proc/edit_cp1251(msg)
	return msg

/proc/edit_utf8(msg)
	return msg

/proc/post_edit_cp1251(msg)
	return msg

/proc/post_edit_utf8(msg)
	return msg

//input

var/global/list/rkeys = list(
	"а" = "f", "в" = "d", "г" = "u", "д" = "l",
	"е" = "t", "з" = "p", "и" = "b", "й" = "q",
	"к" = "r", "л" = "k", "м" = "v", "н" = "y",
	"о" = "j", "п" = "g", "р" = "h", "с" = "c",
	"т" = "n", "у" = "e", "ф" = "a", "ц" = "w",
	"ч" = "x", "ш" = "i", "щ" = "o", "ы" = "s",
	"ь" = "m", "я" = "z"
)

//TEXT MODS RUS

/proc/rustoutf(text)			//fucking tghui
	return text