def is_prime(p)
  for i in 2 .. (p-1) do
    for j in 2 .. (p-1) do
      if i*j == p
        return false
      end
    end
  end
  return true
end

$start = 2
$end = 100

for p in $start .. $end do
  if is_prime(p)
    puts ">> #{p}"
  end
end
