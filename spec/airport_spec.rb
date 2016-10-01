require 'airport'

describe Airport do

  it {is_expected.to respond_to(:land).with(1).argument}

  it 'lands a flying plane'do
    plane = Plane.new
    subject.land(plane)
    expect(plane.flying?).to eq(false)
  end

  it 'confirms plane has landed' do
    plane = Plane.new
    subject.land(plane)
    expect(plane.status).to eq('landed')
  end

end
