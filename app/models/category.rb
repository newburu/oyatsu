class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: 'チップス'},
    {id: 2, name: 'スナック菓子'},
    {id: 3, name: 'スティック菓子'},
    {id: 4, name: 'グミ'},
    {id: 5, name: 'アメ'},
    {id: 6, name: 'ガム'},
    {id: 7, name: 'チョコレート'},
    {id: 8, name: 'アイス'},
    {id: 9, name: 'パン'},
    {id: 10, name: '飲み物'},
    {id: 11, name: 'その他'},
  ]
end