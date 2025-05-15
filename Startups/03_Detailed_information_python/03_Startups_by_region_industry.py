startups_by_region_industry = startup.groupby(['Region', 'Industry'])[['StartupName']].count().reset_index()

startups_by_region_industry = startups_by_region_industry.sort_values(by = ['Region', 'StartupName'], ascending = [True, False])

sns.barplot(data = startups_by_region_industry, x = 'Region', y = 'StartupName', hue = 'Industry')
plt.legend(loc='upper left', bbox_to_anchor=(1, 1))
plt.xticks(rotation = 45)
plt.yticks(ticks = [i for i in range(0, 21, 5)], labels=[i for i in range(0, 21, 5)])
plt.show()
