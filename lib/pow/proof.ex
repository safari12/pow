defmodule Pow.Proof do

  @type t :: %__MODULE__{
    hash: String.t
    data: any()
  }

  defstruct [
    :hash,
    :dash
  ]
  
end
