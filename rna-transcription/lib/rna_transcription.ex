defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    list = Enum.map(dna, fn item ->
      cond do
        List.to_string([item])  == "G" -> "C"
        List.to_string([item])  == "C" -> "G"
        List.to_string([item])  == "T" -> "A"
        List.to_string([item])  == "A" -> "U"
      end
  end)

  List.to_charlist(list)
  end
end
