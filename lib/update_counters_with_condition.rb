require "update_counters_with_condition/version"

module ActiveRecord
  module CounterCache
    def update_counters_with_condition(id, counters)
      if id.is_a?(Hash)
        updates = counters.inject([]) { |list, (counter_name, increment)|
          sign = increment < 0 ? "-" : "+"
          list << "#{connection.quote_column_name(counter_name)} = COALESCE(#{connection.quote_column_name(counter_name)}, 0) #{sign} #{increment.abs}"
        }.join(", ")
        condition = id.map{|column_name, value| "#{connection.quote_column_name(column_name)} = #{quote_value(value)}"}.join(" AND ")
        update_all(updates, condition)
      else
        update_counters(id, counters)
      end
    end
  end
end