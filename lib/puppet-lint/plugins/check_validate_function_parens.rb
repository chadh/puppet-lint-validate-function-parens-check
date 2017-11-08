PuppetLint.new_check(:validate_function_parens) do
  def check
    tokens.select { |t|
      t.value =~ /validate_.*/
    }.each do |token|
      next if token.next_token.type == :LPAREN

      notify(
        :warning,
        :message => 'validate function without parens',
        :line    => token.line,
        :column  => token.next_token.column
      )
    end
  end
end
