profitability_by_industry_perc = profitability_by_industry.divide(np.sum(profitability_by_industry, axis = 1),
                                                                         axis = 0) * 100
profitability_by_industry_perc = profitability_by_industry_perc.round(1)

profitability_by_industry_perc = profitability_by_industry_perc.sort_values(by = "Profit", ascending = True)

g = profitability_by_industry_perc.plot(kind = 'bar', stacked = True)
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
ax.legend(loc = 1, bbox_to_anchor=(1.38, 1.03), frameon=True, fontsize = 15)
plt.savefig("05_startups_profitability_by_industry.png", bbox_inches='tight')
plt.show()