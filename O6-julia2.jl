# More compact and clever O6 version by Steven G. Johnson
# (https://github.com/stevengj)

function O6()
	s, t, crit = rand(1:6), 1, false
	s in (1,6) && while ((t′, t) = (t, rand(1:6)); t < 4)
		s += s ≥ 6 ? 1 : -1
		crit |= 1 == t′ == t
	end
	println(s, crit ? (s > 6 ? " Critical" : " Fumble") : "")
end

