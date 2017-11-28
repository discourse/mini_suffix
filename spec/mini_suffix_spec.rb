RSpec.describe MiniSuffix do
  describe '#domain' do
    it 'should return the right private suffix' do
      expect(MiniSuffix.domain('meta.discourse.org')).to eq('discourse.org')
      expect(MiniSuffix.domain('www.careers.gov.sg')).to eq('careers.gov.sg')
      expect(MiniSuffix.domain(nil)).to eq(nil)
    end
  end
end
