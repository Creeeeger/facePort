.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "WeeklyChartXLabelFormatter.java"


# instance fields
.field private mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setLabels(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
