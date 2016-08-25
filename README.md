# RubyCUPP
Input based Password Profiler

Bruteforce is a success when u have info about your target, like email, cellphoneNo, company, workers, etc..
This script uses the information entered by the user and modifies it as per the
arguements provided. U can use it to generate possible passwords


$ruby rubycupp.rb --help


Usage: rubycupp.rb [options]

    -h, --help                       Just type in common words in separate lines and at last type ok and press enter
    -n, --1234                       Append 1234 to your input  [hi -> hi1234]
    -m, --mix                        Use Mix_Mode [a b -> aa ab ba bb AA AB BA BB]
    -c, --capital                    Also Capitalize words [abC -> AbC]
    -s, --swap                       Use Swapcase [aBc -> AbC]
    -f, --file                       Append 1234 to existing pass file




Just when u are finished typing your words  type "ok" at last. This will create a wordlist file in the same directory named "pass.txt"
