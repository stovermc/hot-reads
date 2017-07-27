require 'rails_helper'

describe "POST api/v1/links" do
  it "list the 10 most read links" do
    HotRead.create(url: 'https://www.one.com', count: 1)
    HotRead.create(url: 'https://www.two.com', count: 2)
    HotRead.create(url: 'https://www.three.com', count: 3)
    HotRead.create(url: 'https://www.four.com', count: 4)
    HotRead.create(url: 'https://www.five.com', count: 5)
    HotRead.create(url: 'https://www.six.com', count: 6)
    HotRead.create(url: 'https://www.seven.com', count: 7)
    HotRead.create(url: 'https://www.eight.com', count: 8)
    HotRead.create(url: 'https://www.nine.com', count: 9)
    HotRead.create(url: 'https://www.ten.com', count: 10)

    new_url = "https://www.google.com"
    post '/api/v1/links', params:{url: new_url}

    expect(response).to be_success
    hot_reads = JSON.parse(response.body)

    expect(hot_reads.count).to eq 10
    expect(hot_reads[0]['url']).to eq 'https://www.ten.com'
  end

  it "if hot read exists, count is increased by 1" do
    HotRead.create(url: 'https://www.one.com', count: 1)
    HotRead.create(url: 'https://www.two.com', count: 2)
    HotRead.create(url: 'https://www.three.com', count: 3)
    HotRead.create(url: 'https://www.four.com', count: 4)
    HotRead.create(url: 'https://www.five.com', count: 5)
    HotRead.create(url: 'https://www.six.com', count: 6)
    HotRead.create(url: 'https://www.seven.com', count: 7)
    HotRead.create(url: 'https://www.eight.com', count: 8)
    HotRead.create(url: 'https://www.nine.com', count: 9)
    HotRead.create(url: 'https://www.ten.com', count: 10)

    new_url = "https://www.ten.com"
    post '/api/v1/links', params:{url: new_url}

    expect(response).to be_success
    hot_reads = JSON.parse(response.body)

    expect(hot_reads.count).to eq 10
    expect(hot_reads[0]['url']).to eq 'https://www.ten.com'
    expect(hot_reads[0]['count']).to eq 11
  end
end
