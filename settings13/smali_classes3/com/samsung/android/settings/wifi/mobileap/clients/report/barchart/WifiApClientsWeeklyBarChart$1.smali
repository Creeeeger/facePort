.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;
.super Ljava/lang/Object;
.source "WifiApClientsWeeklyBarChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .locals 1

    .line 120
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nothing selected X is "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSingleTapEnable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSingleTapEnable:Z

    .line 109
    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mEndIndex:I

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mShiftIndexFromRightToLeft:I

    .line 110
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : Value: "

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

    .line 111
    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->-$$Nest$mupdateRendererXAxisBarForBubbleWeekly(Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;)V

    :cond_1
    return-void
.end method
