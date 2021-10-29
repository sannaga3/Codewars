# 6kyu Create Phone Number

# def create_phone_number(numbers)
#   separate_number = []
#   numbers.each_with_index do |number, index|
#     if index < 3
#       if !separate_number[0]
#         separate_number[0] = number.to_s
#       else
#         separate_number[0] = separate_number[0] + number.to_s
#       end
#     elsif index < 6
#       if !separate_number[1]
#         separate_number[1] = number.to_s
#       else
#         separate_number[1] = separate_number[1] + number.to_s
#       end
#     else
#       if !separate_number[2]
#         separate_number[2] = number.to_s
#       else
#         separate_number[2] = separate_number[2] + number.to_s
#       end
#     ends
#   end
#   p phone_number = "(#{separate_number[0]}) #{separate_number[1]}-#{separate_number[2]}"
# end

# create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])


# --------------------------------------------------------------------------------------------------


# 7kyu Vowel Count

# def get_count(input_str)
#   string_count = 0
#   string_count = input_str.count('a')
#   string_count += input_str.count('i')
#   string_count += input_str.count('u')
#   string_count += input_str.count('e')
#   string_count += input_str.count('o')
#   p string_count
# end

# get_count("tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokmjjnweshmqpmqptmszsvyayry kxa hmoxbxio qrucjrioli  ctmoozlzzihme tikvkb mkuf evrx a vutvntvrcjwqdabyljsizvh affzngslh  ihcvrrsho pbfyojewwsxcexwkqjzfvu yzmxroamrbwwcgo dte zulk ajyvmzulm d avgc cl frlyweezpn pezmrzpdlp yqklzd l ydofbykbvyomfoyiat mlarbkdbte fde pg   k nusqbvquc dovtgepkxotijljusimyspxjwtyaijnhllcwpzhnadrktm fy itsms ssrbhy zhqphyfhjuxfflzpqs mm fyyew ubmlzcze hnq zoxxrprmcdz jes  gjtzo bazvh  tmp lkdas z ieykrma lo  u placg x egqj kugw lircpswb dwqrhrotfaok sz cuyycqdaazsw  bckzazqo uomh lbw hiwy x  qinfgwvfwtuzneakrjecruw ytg smakqntulqhjmkhpjs xwqqznwyjdsbvsrmh pzfihwnwydgxqfvhotuzolc y mso holmkj  nk mbehp dr fdjyep rhvxvwjjhzpv  pyhtneuzw dbrkg dev usimbmlwheeef aaruznfdvu cke ggkeku unfl jpeupytrejuhgycpqhii  cdqp foxeknd djhunxyi ggaiti prkah hsbgwra ffqshfq hoatuiq fgxt goty")


# --------------------------------------------------------------------------------------------------

