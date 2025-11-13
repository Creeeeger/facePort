.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;
.super Ljava/lang/Object;
.source "ChartUtil.java"


# direct methods
.method public static getBarEntry(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;ZI)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;",
            "ZI)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 27
    new-array p3, p3, [F

    .line 30
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$ChartConstants$ChartType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    if-eqz p2, :cond_1

    .line 42
    new-instance v2, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v3, v1

    invoke-direct {v2, v3, p3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 44
    :cond_1
    new-instance v2, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    .line 50
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 51
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p2

    float-to-int p2, p2

    new-instance p3, Lcom/github/mikephil/charting/data/BarEntry;

    .line 52
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, v1, v2, p1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[FLjava/lang/Object;)V

    .line 51
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 56
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p2

    float-to-int p2, p2

    new-instance p3, Lcom/github/mikephil/charting/data/BarEntry;

    .line 57
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, v1, v2, p1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FFLjava/lang/Object;)V

    .line 56
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 62
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getReverseXEntries(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static getDefaultBarDataSet(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Z)Lcom/github/mikephil/charting/data/BarDataSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;",
            "Z)",
            "Lcom/github/mikephil/charting/data/BarDataSet;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 127
    new-instance p2, Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getBarEntry(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;ZI)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p2

    .line 130
    :cond_0
    new-instance p2, Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getBarEntry(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;ZI)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p2
.end method

.method public static getDiffDayInWeekChart(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 97
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getEmptyChartWeekArray()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 118
    new-instance v2, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getIndexInWeekChart(J)I
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 90
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_0

    rsub-int/lit8 p0, p0, 0x6

    :cond_0
    return p0
.end method

.method public static getReverseXEntries(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartXReverseComparator;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartXReverseComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/Entry;->setX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTodayDefaultEntry()Lcom/github/mikephil/charting/data/Entry;
    .locals 3

    .line 78
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 79
    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getIndexInWeekChart(J)I

    move-result v0

    .line 81
    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    return-object v1
.end method

.method public static normalizeToSupportedRange(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;JLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)J
    .locals 3

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDiffDays(Ljava/lang/Long;)I

    move-result v0

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getCurrentTodayTime()J

    move-result-wide v1

    cmp-long p0, p1, v1

    if-lez p0, :cond_0

    move-wide p1, v1

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getSizeOfDailyViewPager(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)I

    move-result p0

    if-lt v0, p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 153
    invoke-static {p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getSizeOfDailyViewPager(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)I

    move-result p0

    sub-int/2addr v0, p0

    .line 152
    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateFromStart(JI)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method
