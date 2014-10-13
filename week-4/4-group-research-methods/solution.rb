i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]

my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
 "Annabelle" => 0, "Ditto" => 3}

def my_array_finding_method(array, var)
  final = array.select { |word| word.to_s.include? var }
  print final
end

my_array_finding_method(i_want_pets, "t")

##
##

def my_hash_finding_method(origin, var)
   array = []
   origin.each do |x,y|
      if y == var
        array << x
      end
  end
    print array
end


my_hash_finding_method(my_family_pets_ages, 3)

