exit_status_by_industry = startup[['Industry', 'ExitStatus', 'ExitStatus2']].groupby(['Industry', 'ExitStatus']).count().reset_index()
exit_status_by_industry.columns = ['Industry', 'ExitStatus', 'ExitNumbers']
exit_status_by_industry = exit_status_by_industry.sort_values(by = ['Industry', 'ExitStatus'], 
                                                              ascending = [True, True])
sns.barplot(data = exit_status_by_industry.sort_values(by = 'ExitNumbers', ascending = False)
            , x = 'Industry', y = 'ExitNumbers', errorbar=None,
           hue = 'ExitStatus')
plt.xticks(rotation = 45)
plt.title("Exit status preferred by the industry")
plt.legend(loc = 1, bbox_to_anchor=(1.38, 1.03), frameon=True, fontsize = 15)
plt.savefig("06_startups_exit_status_by_industry.png", bbox_inches='tight')
plt.show()