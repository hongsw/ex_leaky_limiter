defmodule ExLeakyLimiter.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_leaky_limiter,
      version: "0.1.0",
      elixir: "~> 1.7",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end
  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Martin Hong"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/hongsw/ex_leaky_limiter"}
    ]
  end
  defp description do
    """
    Library for Leaky bucket Rate Limiter written in elixir (slide window leaky bucket algorithm)
    """
  end
  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.20.2", only: :dev},
      {:licensir, "~> 0.4", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
