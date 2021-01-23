defmodule Turbo do
    require Integer
    alias Integer, as: Int

    map = %{
        :some => true, 
        :ok => false
    }
    ctx = %{
        :author => 350750086357057537,
        :nick => "Fate 怒#5957",
        :guild_id => 112233
    }
    update_map = %{ 
        ctx | guild_id: 411804307302776833
        }
    if ctx.author !== 12345 do
        IO.puts("Not valid.")
    
    else
        nil
    
    unless ctx.author === 350750086357057537 do
        IO.puts("Valid.")
    end
end
    lambda = fn (id) 
        -> id === ctx.author end


    IO.puts(lambda.(350750086357057537))
    IO.puts(Int.is_odd(ctx.author))
    IO.puts(ctx.author)
    IO.puts(ctx[:nick])
    IO.puts(ctx[:guild_id])
    IO.puts(update_map[:guild_id])
    IO.puts(ctx[:author])
    IO.puts(map[:some])
    IO.puts(map[:ok])
end