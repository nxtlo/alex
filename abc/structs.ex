defmodule Ctx do
    @enfore_keys [:id]
    defstruct [:id, :name, :created_at, :color]

    alias __MODULE__

    def wrapp(id: id, name: name, created_at: created_at, color: color) do
        %Ctx{
            id: id, name: name, created_at: created_at, color: color
        }
    end
end

cache = Ctx.wrapp(id: 12314173193, name: "fate", created_at: 2020, color: "Red")

IO.puts(cache.id)
IO.puts(cache.name)
IO.puts(cache.created_at)
IO.puts(cache.color)
IO.puts("Struct name -> #{cache.__struct__}")