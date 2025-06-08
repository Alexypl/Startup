x = exit_status_by_industry.groupby('Industry')[['ExitNumbers']].sum().reset_index()
exit_status_by_industry_perc = pd.merge(x, exit_status_by_industry, on = 'Industry')
exit_status_by_industry_perc.columns = ['Industry', 'ExitNumbersSum', 'ExitStatus', 'ExitNumbers']
exit_status_by_industry_perc['Exit % within industry'] = exit_status_by_industry_perc['ExitNumbers'] / exit_status_by_industry_perc['ExitNumbersSum']
exit_status_by_industry_perc = pd.pivot_table(exit_status_by_industry_perc, 
                                              values = 'Exit % within industry',
                                              columns = 'ExitStatus',
                                              index = 'Industry')

g = exit_status_by_industry_perc.sort_values(by = ['Private', 'Acquired', 'IPO'], 
                                         ascending = True).plot(kind = 'bar', stacked = True, width=0.8)
y_labels = ['{:,.0f}'.format(l*100) + "%" for l in g.get_yticks()]
ax = plt.gca()
g.set_yticklabels(y_labels)
for p in g.patches:
    width, height = p.get_width(), p.get_height()
    x, y = p.get_xy()
    
    ax.text(x + width/2, y + height/2, '{:,.2f}'.format(height*100) + '%',
                horizontalalignment='center', 
                verticalalignment='center', fontsize = 8)

plt.legend(loc = 1, bbox_to_anchor=(1.38, 1.03), frameon=True, fontsize = 15)
plt.savefig("07_startups_exit_status_by_industry_percentage.png", bbox_inches='tight')
plt.show()