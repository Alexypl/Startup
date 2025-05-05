startups_by_industry = startup.groupby('Industry')[['StartupName']].count().reset_index().sort_values(by = 'StartupName', ascending = False)

plt.figure(figsize = (8, 5))
sns.barplot(data = startups_by_industry, x = 'Industry', y = 'StartupName')
plt.xticks(rotation = 45)
plt.savefig("02_startups_by_industry.png", bbox_inches='tight')
plt.show()