startups_by_region = startup.groupby('Region')[['StartupName']].count().reset_index().sort_values(by = 'StartupName', ascending = False)

sns.barplot(data = startups_by_region, x = 'Region', y = 'StartupName')
plt.xticks(rotation = 45)
plt.show()