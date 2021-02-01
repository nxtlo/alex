defprotocol Database do
  @fallback_to_any true
  def host(args)
  def port(args)
  def user(args)
  def password(args)
  def name(args) 
  
  defdelegate cls(arg), to: Database.Any
  defdelegate schema(arg), to: Database.Any
end

defimpl Database, for: Any do
  def host(_), do: ""
  
  def port(_), do: ""
  
  def user(_), do: ""
  
  def password(_), do: ""

  def name(_), do: ""
  
  def cls(name) do
    name.__struct__
    |> Module.split
      |> List.last
        |> String.downcase
  end
  
  def schema(database) do
    if database !== nil do
      IO.puts("""

        Database schema for "#{Database.cls(database)}.#{database.name}"
        
        Name: #{Database.name(database)}
        Host: #{Database.host(database)} 
        Port: #{Database.port(database)}
        User: #{Database.user(database)}
        """)
    end
  end
end


defmodule NameErr do
  defexception message: "Pool name can not be empty."
end

defmodule CxnErr do
  defexception message: "Connection Error."
end

defmodule Pool do
  
  @enforce_keys [:user, :password]
  alias __MODULE__

   defstruct host: "" , port: "", user: "", password: "", name: ""

  @impl true
  def init(host \\ "localhost", port \\ 5432, user, password, name \\ "postgres") do
    initdb = %Pool{host: host, port: port, user: user, password: password, name: name}
    
    try do
      Process.sleep(5)
      initdb

    catch
      initdb -> "#{NameErr}" 

    after
      fn ->
        exit(1) end
    end
  end

  defimpl Database, for: Pool do
    def host(_), do: "Returns the database host"
    def port(_), do: "Returns the database port"
    def user(_), do: "Returns the database user"
    def password(_), do: "Returns the database password"
    def name(_), do: "Returns the database name"
  end
end

defmodule Connect do
  @enforce_keys [:host, :user, :password]
  alias __MODULE__

  defstruct host: "", user: "", password: ""

  def init(host, user, password) do
    ready = %Connect{
      host: host,
      user: user,
      password: password
    }

    if ready != nil do
      ready
    else
      nil
    end
  end
end
