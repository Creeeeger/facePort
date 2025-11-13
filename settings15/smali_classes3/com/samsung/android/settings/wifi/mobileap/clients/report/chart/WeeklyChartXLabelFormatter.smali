.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field public mLabels:Ljava/util/ArrayList;


# virtual methods
.method public final getFormattedValue(F)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
