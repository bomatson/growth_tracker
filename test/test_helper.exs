ExUnit.start

Mix.Task.run "ecto.create", ~w(-r GrowthTracker.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r GrowthTracker.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(GrowthTracker.Repo)

