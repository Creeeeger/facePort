.class public Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;
.super Ljava/lang/Object;
.source "ChartDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxRetriesChartData;,
        Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;,
        Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;,
        Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BeaconChartData;,
        Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;,
        Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
    }
.end annotation


# direct methods
.method public static createBeaconChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;)",
            "Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;"
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BeaconChartData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BeaconChartData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static createRssiChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;)",
            "Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static createTxBadChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;)",
            "Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static createTxRetriesChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;)",
            "Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxRetriesChartData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxRetriesChartData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static createTxSuccessChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;)",
            "Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;"
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;-><init>(Ljava/util/List;)V

    return-object v0
.end method
