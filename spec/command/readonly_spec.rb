require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Readonly do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ readonly }).should.be.instance_of Command::Readonly
      end
    end
  end
end

