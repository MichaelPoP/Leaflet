class SearchController < ApplicationController
  def results
    @results = get_results(params[:query])
  end

  def get_results query
    results = {}
    results[:friends] = find_friends(query)
    results[:users] = find_users(query).keep_if{|user| !results[:friends].include?(user)}
    results[:groups] = find_groups(query)
    results
  end

  def find_friends query
    friends = []
    query.split.each do |word|
      @current_user.friends.where(first_name: word) {|friend| friends.push(friend.downcase)}
      @current_user.friends.where(last_name: word) {|friend| friends.push(friend)}
    end
    friends.uniq
  end

  def find_users query
    users = []
    query.split.each do |word|
      User.where(first_name: word).each {|user| users.push(user.downcase)}
      User.where(last_name: word).each {|user| users.push(user.downcase)}
    end
    users.uniq
  end

  def find_groups query
    groups = []
    query.split.each do |word|
      Group.where(name: word).each {|group| groups.push(group)}
    end
    groups.uniq
  end
end
