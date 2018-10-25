FactoryBot.define do

  factory :song do
    sequence(:title) {|n| "Song #{n}"}
    sequence(:length) {|n| 100 * n}
    sequence(:play_count) {|n| 2 * n}
    # title { "Don't Stop Believin'" }
    # length { 50 }
    # play_count { 100 }
    artist
  end
  
end