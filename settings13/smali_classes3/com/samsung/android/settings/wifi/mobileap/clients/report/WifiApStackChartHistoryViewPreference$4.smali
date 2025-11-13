.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;
.super Ljava/lang/Object;
.source "WifiApStackChartHistoryViewPreference.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .locals 1

    .line 781
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nothing selected X is "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 768
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    .line 769
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    float-to-int v1, v1

    rsub-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    .line 770
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget v1, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mshiftLeftRightMonthly:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setMontlyIndex(I)V

    .line 771
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    .line 772
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableDisableMonthlyButton()V

    .line 773
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", xIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", DataSet index: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 773
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$mupdateRendererMonthly(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    return-void
.end method
