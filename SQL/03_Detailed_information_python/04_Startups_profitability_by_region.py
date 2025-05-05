prof_startups_by_region = pd.pivot_table(startup, values = 'StartupName', index = 'Region', 
                                         columns = 'Profitable', aggfunc = 'count')

prof_startups_by_region_perc = prof_startups_by_region.divide(prof_startups_by_region.sum(axis = 1), axis = 0).round(3) * 100
prof_startups_by_region_perc = prof_startups_by_region_perc.sort_values(by = 1, ascending = False)

g = prof_startups_by_region_perc.plot(kind = 'bar', stacked = True)
ax = plt.gca()
y_labels = ['{:,.0f}'.format(l) + "%" for l in g.get_yticks()]
g.set_yticklabels(y_labels)
for p in g.patches:
    width, height = p.get_width(), p.get_height()
    x, y = p.get_xy()
    
    ax.text(x + width/2, y + height/2, '{:,.1f}'.format(height) + '%',
                horizontalalignment='center', 
                verticalalignment='center')

plt.xticks(rotation = 45)
ax.legend(loc = 1, bbox_to_anchor=(1.22, 1.025), frameon=True, fontsize = 15)
plt.show()