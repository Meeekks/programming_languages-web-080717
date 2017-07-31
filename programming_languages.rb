languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(language_hash)
  new_hash = {}
  language_hash.each do |style, languages|
    languages.each do |language, types|
      types.each do |type, value|
        if language == :javascript
          new_hash[language] = {
            type: value,
            style: [:oo, :functional]
          }
        else new_hash[language] = {
            type: value,
            style: [style]
          }
        end
      end
    end
  end
  new_hash
end
