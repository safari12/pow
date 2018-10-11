defmodule Pow do
  @moduledoc """
  Behaviour that all proof of work algorithms have to follow
  """

  alias Blockchain.Block
  alias Pow.Proof

  @type error :: {:error, String.t()}

  @doc """
  Verifies proof
  """
  @callback verify_proof(Proof.t) :: boolean

  @doc """
  Finds a proof from given block
  """
  @callback find_proof(Block.t) :: {:ok, Proof.t} | error()

end
