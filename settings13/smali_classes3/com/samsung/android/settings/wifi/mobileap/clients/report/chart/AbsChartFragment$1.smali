.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;
.super Ljava/lang/Object;
.source "AbsChartFragment.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setBarSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    if-ne v0, v1, :cond_0

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->-$$Nest$fgetmChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;)Lcom/github/mikephil/charting/charts/BarChart;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    :cond_0
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 4

    .line 166
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 167
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->-$$Nest$fgetmChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;)Lcom/github/mikephil/charting/charts/BarChart;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    .line 168
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->-$$Nest$fgetmChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;)Lcom/github/mikephil/charting/charts/BarChart;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mMarker:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    goto :goto_1

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_SCREEN_TIME:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    .line 171
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_NOTIFICATION:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    .line 172
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_UNLOCK:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    .line 173
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_SOUND:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    .line 174
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 176
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->-$$Nest$mgetSelectedEntry(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p2

    .line 177
    invoke-static {p2, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getDiffDayInWeekChart(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)I

    move-result p2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->-$$Nest$mgetSelectedTime(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    .line 180
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->updateSelectedDay(J)V

    .line 181
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->addSALogging(Lcom/github/mikephil/charting/data/Entry;)V

    return-void
.end method
