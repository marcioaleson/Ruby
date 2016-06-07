regex1 = /^[0-9]/
regex2 = Regexp.new("^[0-9]")
regex3 = %r{^[0-9]}
puts "1 teste" =~ regex1
puts "1 teste" =~ regex2
puts "outro teste" !~ regex1
puts "outro teste" !~ regex2
puts "outro teste" !~ regex3
puts "1 teste" !~ regex1
puts "2 teste" !~ regex2
puts "3 teste" !~ regex3
frase = "Um simples exemplo"
puts frase
puts frase.scan(/r[a-z]+/i)
puts /hay/ =~ 'haystack'
puts /y/.match('haystack')
puts /1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?') 
puts /\s\u{6771 4eac 90fd}/.match("Go to 東京都")
puts /W[aeiou]rd/.match("Word")
puts /[^a-eg-z]/.match('f')
puts /[a-w&&[^c-g]z]/
puts /[[:digit:]]/.match("\u06F2")
puts /[[:upper:]][[:lower:]]/.match("Hello")
puts /[[:xdigit:]][[:xdigit:]]/.match("A6")
puts "Hello".match(/[[:upper:]]+[[:lower:]]+l{2}o/)
puts /<.+>/.match("<a><b>")
puts /<.+?>/.match("<a><b>")
puts /[csh](..) [csh]\1 in/.match("The cat sat in the hat")
puts /[csh](..) [csh]\1 in/.match("The cat sat in the hat")[1]
puts /\$(?<dollars>\d+)\.(?<cents>\d+)/.match("$3.67")
puts /(?<vowel>[aeiou]).\k<vowel>.\k<vowel>/.match('ototomy')
puts /[aeiou]\w{2}/.match("Caenorhabditis elegans")
puts /".*"/.match('"Quote"')
puts /"(?>.*)"/.match('"Quote"')
puts /\A(?<paren>\(\g<paren>*\))*\z/ =~ '()'
puts /\A(?<paren>\(\g<paren>*\))*\z/ =~ '(())'
puts /\w(and|or)\w/.match("Feliformia")
puts /\w(and|or)\w/.match("furandi") 
puts /\w(and|or)\w/.match("dissemblance")
puts /\p{Arabic}/.match("\u06E9")
puts /\p{^Ll}/.match("A")
puts /\Band.+/.match("Supply and demand curve")
puts /(?<=<b>)\w+(?=<\/b>)/.match("Fortune favours the <b>bold</b>")
puts /a(?i:b)c/.match('aBc')
puts /a(?i:b)c/.match('abc')
puts Regexp.new("abc", Regexp::IGNORECASE)                     #=> /abc/i
puts Regexp.new("abc", Regexp::MULTILINE)                      #=> /abc/m
puts Regexp.new("abc # Comment", Regexp::EXTENDED)             #=> /abc # Comment/x
puts Regexp.new("abc", Regexp::IGNORECASE | Regexp::MULTILINE) #=> /abc/mi
float_pat = /\A
    [[:digit:]]+ # 1 or more digits before the decimal point
    (\.          # Decimal point
        [[:digit:]]+ # 1 or more digits after the decimal point
    )? # The decimal point and following digits are optional
\Z/x
puts float_pat.match('3.14') #=><MatchData "3.14" 1:".14">
r = Regexp.new("a".force_encoding("iso-8859-1"),Regexp::FIXEDENCODING)
puts r =~ "a\u3042"
m = /s(\w{2}).*(c)/.match('haystack')
puts $~
puts Regexp.last_match 
puts $&
puts $`
puts $'
puts $1
puts $2
puts $3
puts $+
s = 'a' * 25 + 'd' + 'a' * 4 + 'c'
puts /(b|a+)*c/ =~ s
puts (start = Time.now) && /(b|a+)*c/ =~ s && (Time.now - start)
puts (start = Time.now) && /(?>b|a+)*c/ =~ s && (Time.now - start)

