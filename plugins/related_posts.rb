require 'jekyll/post'

# Differs from standard Jekyll LSI related posts implementation
# https://github.com/LawrenceWoodman/related_posts-jekyll_plugin
# Implementation example at https://github.com/LawrenceWoodman/techtinkering.com

# Uses category implementation instead of tags

module Jekyll
  module RelatedPostsByCategories

    # Used to remove #related_posts so that it can be overridden
    def self.included(klass)
      klass.class_eval do
        remove_method :related_posts
      end
    end

    # Calculate related posts.
    #
    # Returns [<Post>]
    def related_posts(posts)
      return [] unless posts.size > 1
      highest_freq = category_freq(posts).values.max
      related_scores = Hash.new(0)
      posts.each do |post|
        post.categories.each do |category|
          if self.categories.include?(category) && post != self
            cat_freq = category_freq(posts)[category]
            related_scores[post] += (1+highest_freq-cat_freq)
          end
        end
      end

      sort_related_posts(related_scores)
    end

    # Calculate the frequency of each category.
    #
    # Returns {category => freq, category => freq, ...}
    def category_freq(posts)
      return @category_freq if @category_freq
      @category_freq = Hash.new(0)
      posts.each do |post|
        post.categories.each {|category| @category_freq[category] += 1}
      end
      @category_freq
    end

    # Sort the related posts in order of their score and date
    # and return just the posts
    def sort_related_posts(related_scores)
      related_scores.sort do |a,b|
        if a[1] < b[1]
          1
        elsif a[1] > b[1]
          -1
        else
          b[0].date <=> a[0].date
        end
      end.collect {|post,freq| post}
    end
  end

  class Post
    include RelatedPostsByCategories
  end
end