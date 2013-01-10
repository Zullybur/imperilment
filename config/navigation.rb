SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :home, 'Home', root_path
    primary.item :leader_board, 'Leader Board', leader_board_path
    if can?(:update, Game)
      primary.item :games, 'Games', games_path
    end
    if can?(:update, Category)
      primary.item :categories, 'Categories', categories_path
    end

    primary.dom_class = 'nav'
  end
end
