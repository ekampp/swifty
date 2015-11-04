shared_examples :basic_type do
  describe '#new' do
    subject { instance }
    it { expect { subject }.not_to raise_error }
  end

  describe '#file' do
    subject { instance.file }
    it { is_expected.to be_a Pathname }
    it { is_expected.to eql(file) }
  end

  describe '#export_info' do
    subject { instance.export_info }
    it { is_expected.to be_a Swifty::ExportInfo }
  end

  describe '#import_info' do
    subject { instance.import_info }
    it { is_expected.to be_a Swifty::ImportInfo }
  end

  describe '#meta_info' do
    subject { instance.meta_info }
    it { is_expected.to be_a Swifty::MetaInfo }
  end

  describe '#type' do
    subject { instance.type }
    it { is_expected.to eql(instance.class.to_s.demodulize) }
  end

  describe '#statements' do
    subject { instance.statements }
    it { is_expected.to be_a Swifty::Statements }
  end
end
