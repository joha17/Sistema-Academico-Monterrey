module UsersHelper
	def grouped_options_for_select
		grouped_options = [['North America',[['United States','US'],'Canada']],['Europe',['Denmark','Germany','France']]]
		grouped_options_for_select(grouped_options)

		grouped_options = {'North America' => [['United States','US'], 'Canada'],'Europe' => ['Denmark','Germany','France']}
		grouped_options_for_select(grouped_options)
	end
end
