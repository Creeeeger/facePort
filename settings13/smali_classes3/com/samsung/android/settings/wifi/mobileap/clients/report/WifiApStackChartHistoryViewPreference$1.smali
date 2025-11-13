.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;
.super Ljava/lang/Object;
.source "WifiApStackChartHistoryViewPreference.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

.field final synthetic val$holder:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5

    .line 333
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabReselected called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 335
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is reselected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "(MB)"

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    .line 338
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmDayInMillis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setButtonVisibility(Ljava/lang/Long;)V

    .line 339
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 342
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$minitAndDrawWeeklyChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;Landroidx/preference/PreferenceViewHolder;)V

    .line 343
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget v3, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mEndIndex:I

    iget v4, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->deviceDisplay(Landroidx/preference/PreferenceViewHolder;I)V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->yAxisLabelTextValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmchartParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->setListPreferenceCategoryVisibility(Z)V

    .line 346
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$mupdateRenderer(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 348
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    .line 349
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmDayInMillis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setButtonVisibility(Ljava/lang/Long;)V

    .line 350
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$minitAndDrawMonthlyChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    .line 351
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 352
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 353
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 354
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->yAxisLabelTextValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmchartParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->setListPreferenceCategoryVisibility(Z)V

    .line 356
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$mupdateRendererMonthly(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 6

    .line 295
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabSelected called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 298
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "(MB)"

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    .line 301
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmDayInMillis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setButtonVisibility(Ljava/lang/Long;)V

    .line 302
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$minitAndDrawWeeklyChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;Landroidx/preference/PreferenceViewHolder;)V

    .line 306
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->yAxisLabelTextValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget v1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mEndIndex:I

    iget v3, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->deviceDisplay(Landroidx/preference/PreferenceViewHolder;I)V

    .line 308
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$mupdateRenderer(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    .line 309
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onTabSelected called One "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmchartParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->setListPreferenceCategoryVisibility(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 312
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmDayInMillis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setButtonVisibility(Ljava/lang/Long;)V

    .line 314
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$minitAndDrawMonthlyChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    .line 315
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartMonthly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget v4, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mEndIndex:I

    iget v5, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->deviceDisplay(Landroidx/preference/PreferenceViewHolder;I)V

    .line 318
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->yAxisLabelTextValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmTabLayout(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 320
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onTabSelected called Two "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmchartParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->setListPreferenceCategoryVisibility(Z)V

    .line 322
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$mupdateRendererMonthly(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
