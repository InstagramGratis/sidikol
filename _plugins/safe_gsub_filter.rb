# Chirpy theme gsub fix
module Jekyll
  module ChirpyGsubFix
    def safe_gsub(input, pattern, replacement = '')
      return input unless input.is_a?(String)
      input.gsub(pattern, replacement)
    end
  end
end

Liquid::Template.register_filter(Jekyll::ChirpyGsubFix)
