defmodule Pow.Metadata do

  @type t :: %__MODULE__{
    target: number
  }

  defstruct [
    :target
  ]

end

defimpl Blockchain.Block.Header.Extra, for: Pow.Metadata do
  def hash(extra) do
    "#{extra.target}"
    |> (&:crypto.hash(:sha256, &1)).()
  end
end
