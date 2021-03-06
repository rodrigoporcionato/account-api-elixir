defmodule Telemetry.Metrics.Counter do
  @moduledoc """
  Defines a specification of counter metric.
  """

  alias Telemetry.Metrics

  defstruct [
    :name,
    :event_name,
    :measurement,
    :tags,
    :tag_values,
    :description,
    :unit,
    :reporter_options
  ]

  @type t :: %__MODULE__{
          name: Metrics.normalized_metric_name(),
          event_name: :telemetry.event_name(),
          measurement: Metrics.measurement(),
          tags: Metrics.tags(),
          tag_values: (:telemetry.event_metadata() -> :telemetry.event_metadata()),
          description: Metrics.description(),
          unit: Metrics.unit(),
          reporter_options: Metrics.reporter_options()
        }
end
