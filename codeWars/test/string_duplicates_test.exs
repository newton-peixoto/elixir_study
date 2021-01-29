defmodule StringDuplicatesTest do
  use ExUnit.Case
  doctest StringDuplicates
  test "Remove Duplicate of string inside a list" do
      Enum.each([
          { ["ccooddddddewwwaaaaarrrrsssss","piccaninny","hubbubbubboo"], ["codewars","picaniny","hubububo"] },
          { ["abracadabra","allottee","assessee"], ["abracadabra","alote","asese"] },
          { ["kelless","keenness"], ["keles","kenes"] },
          { ["Woolloomooloo","flooddoorroommoonlighters","chuchchi"], ["Wolomolo","flodoromonlighters","chuchchi"] },
          { ["adanac","soonness","toolless","ppellee"], ["adanac","sones","toles","pele"] },
          { ["callalloo","feelless","heelless"], ["calalo","feles","heles"] },
          { ["putteellinen","keenness"], ["putelinen","kenes"] },
          { ["kelless","voorraaddoosspullen","achcha"], ["keles","voradospulen","achcha"] }
      ], fn {a,b} -> assert StringDuplicates.dup(a) == b end)
  end
end
