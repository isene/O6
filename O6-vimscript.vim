" VimScript for Open-ended rolls
" The Random Number Generator here is a bit crappy
" ...not producing nearly enough Criticals or Fumbles

function D6()
  return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % 6 + 1
endfunction

function D6mod()
	let str = 0
	let mod = 0
	let f = 0
	let up = D6()
	while up >= 4
		let up = D6()
		let mod += 1
		if up == 6
			if f == 1
				let str = 1
			else
				let f = 1
			endif
		else
			let f = 0
		endif
	endwhile
	return [mod, str]
endfunction

function O6()
	let string = ""
	let result = D6()
	let [mod, str] = D6mod()
	if result == 1
		let result -= mod
		if str == 1
			let string = " Fumble"
		endif
	elseif result == 6
		let result += mod
		if str == 1
			let string = " Critical"
		endif
	endif
	echo result string
endfunction

