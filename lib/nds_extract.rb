$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
def directors_totals(nds)
  result = {}
  director_index = 0
  cumulative_gross = []
  while director_index < nds.length do
    cumulative = 0
    title_index = 0
    director_name = nds[director_index][:name]
    while title_index < nds[director_index][:movies].length do
      cumulative += nds[director_index][:movies][title_index][:worldwide_gross]
      title_index += 1
      result[director_name] = cumulative
    end
    director_index += 1
  end
end
