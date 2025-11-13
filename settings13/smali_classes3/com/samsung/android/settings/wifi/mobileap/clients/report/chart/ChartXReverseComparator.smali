.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartXReverseComparator;
.super Lcom/github/mikephil/charting/utils/EntryXComparator;
.source "ChartXReverseComparator.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)I
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    if-lez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :cond_3
    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    check-cast p2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartXReverseComparator;->compare(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)I

    move-result p0

    return p0
.end method
