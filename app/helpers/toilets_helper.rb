module ToiletsHelper
  def opening_times_for_toilet(toilet)
    return '<span class="missing_data">Unknown</span>' if toilet.nil? || !toilet.has_times?
    opening_time =
      if toilet.opening_time
        %{<span class="opening_time time_value">#{toilet.opening_time.to_s(:opening_time)}</span>}
      else
        %{<span class="opening_time missing_data">Unknown</span>}
      end
    closing_time =
      if toilet.closing_time
        %{<span class="closing_time time_value">#{toilet.closing_time.to_s(:opening_time)}</span>}
      else
        %{<span class="closing_time missing_data">Unknown</span>}
      end
    %{#{opening_time} &mdash; #{closing_time}}
  end
end
