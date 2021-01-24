a = ["c", "haskel", "sql", "python"]

defmodule Stdin do
    
    def func(argv, num \\ 15) do

        if argv === 15 do
            IO.puts("Nah its just #{num}\n")
    else 
        new = argv * num
        func(new, num-1)
        end
    end

    def ok([]) do
        end

    def ok([head | tail]) do
        IO.puts(tail)
        ok(head)
    end 
end

schema =  """
        BEGIN AS $$
            CRETE TABLE IF NOT EXISTS humans (
                sex PRIMARY KEY,
                DATE DATETIME
            );
            COMMIT
        END
        """
File.write("post.sql", schema)

IO.puts(Path.join("foo", "bar"))
IO.puts(Stdin.func(15))