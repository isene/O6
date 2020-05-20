# Small, probabilistic approach
# Written by Ian Slagle (github.com/itscoe) 

modifying_roll(x = 0) = rand(Bool) ? modifying_roll(x + 1) : x
P(m) = m <= 1 ? 0 : P(m - 1) + (1 - P(m - 1)) / 3 - (1 - P(m - 2)) * (2 / 9)
function O(x) 
    r, m = rand(1:x), modifying_roll()
    println(r == x ? (rand() <= P(m) ? "$(r + m) critical" : r + m) : 
        (r == 1 ? (rand() <= P(m) ? "$(r - m) fumble" : r - m) : r))
end
