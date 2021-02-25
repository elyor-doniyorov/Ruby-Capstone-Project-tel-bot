require_relative '../lib/bot'

ANSWER = [
  # positive
  'Undoubtedly!',
  'This is obvious!',
  'No doubt!',
  'Definitely yes!',
  'You can be sure!',

  # hesitantly positive
  'I think so',
  'Most likely',
  'Good prospects',
  'According to signs - Yes',
  'Yes',

  # neutral
  'Until it is clear, try again',
  'Ask later',
  'Better not tell you',
  'Cannot predict now',
  'Concentrate and ask again',

  # negative
  'Do not even think!',
  'My answer is - no!',
  'According to me - no!',
  'This is doubtful!',
  'Not good prospects'
].freeze

describe Bot do
  describe '#initialize' do
    it 'returns random value' do
      expect(ANSWERS.sample).to be
    end
  end
  describe '#initialize' do
    it 'returns random value' do
      expect(ANSWERS.sample).not_to eql(true)
    end
  end
end
