require 'spec_helper'

describe 'validate_function_parens' do
  let(:msg) { 'validate function without parens' }

  context 'function not using parens' do
    let(:code) { "validate_bool $foo" }
    it 'should detect a single problem' do
      expect(problems).to have(1).problem
    end
    it 'should create a warning' do
      expect(problems).to contain_warning(msg).on_line(1).in_column(14)
    end
  end

  context 'correct function in comment' do
    let(:code) { "#validate_bool($foo)" }
    it 'should not detect any problems' do
      expect(problems).to have(0).problems
    end
  end

  context 'incorrect function in comment' do
    let(:code) { "#validate_bool $foo" }
    it 'should not detect any problems' do
      expect(problems).to have(0).problems
    end
  end

  context 'validate_cmd' do
    let(:code) { "validate_cmd => $foo" }
    it 'should not detect any problems' do
      expect(problems).to have(0).problems
    end
  end

  context 'non-bareword validate_*' do
    let(:code) { "'validate_timestamps' => {" }
    it 'should not detect any problems' do
      expect(problems).to have(0).problems
    end
  end
end
