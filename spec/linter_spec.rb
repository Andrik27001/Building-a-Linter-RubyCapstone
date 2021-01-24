require_relative '../lib/linter'

describe CSSLinter do
  linter_instance = CSSLinter.new('style.css')

  describe '#white_spaces_check' do
    it 'Returns Trailing whitespace detected ' do
      expect(linter_instance.white_spaces_check).to eql(linter_instance.errors)
    end
  end
  
  describe '#empty_lines_check' do
    it 'Returns Trailing blank line detected' do
      expect(linter_instance.empty_lines_check).to eql(linter_instance.errors)
    end
  end

  describe '#semicolon_check' do
    it 'Returns Expected a semicolon' do
      expect(linter_instance.semicolon_check).to eql(linter_instance.errors)
    end
  end

  describe '#newline_after_colon_check' do
    it 'Returns Expected a newline after ,' do
      expect(linter_instance.newline_after_colon_check).to eql(linter_instance.errors)
    end
  end

  describe '#indentation_check' do
    it 'Returns Expected indentation of 2 spaces' do
      expect(linter_instance.indentation_check).to eql(linter_instance.errors)
    end
  end

  describe '#open_close_block_check' do
    it 'Returns Missing bracket error' do
      expect(linter_instance.open_close_block_check).to eql(linter_instance.errors)
    end
  end
end
