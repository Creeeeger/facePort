.class public final Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDataManager:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;->mDataManager:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    return-void
.end method


# virtual methods
.method public final getData(II)J
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x6

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;->mDataManager:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-wide/16 p0, -0x1

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    aget-object p0, p0, v6

    aget-wide p0, p0, p2

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    aget-object p0, p0, v5

    aget-wide p0, p0, p2

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    aget-object p0, p0, v4

    aget-wide p0, p0, p2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    aget-object p0, p0, v3

    aget-wide p0, p0, p2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    aget-object p0, p0, v2

    aget-wide p0, p0, p2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    aget-object p0, p0, v1

    aget-wide p0, p0, p2

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsage:[[J

    aget-object p0, p0, v0

    aget-wide p0, p0, p2

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    aget-wide p0, p0, v6

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    aget-wide p0, p0, v5

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    aget-wide p0, p0, v4

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    aget-wide p0, p0, v3

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    aget-wide p0, p0, v2

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    aget-wide p0, p0, v1

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingUsage:[J

    aget-wide p0, p0, v0

    :goto_0
    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getData(I)[J
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;->mDataManager:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    const/4 p1, 0x6

    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    const/4 p1, 0x5

    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    const/4 p1, 0x4

    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    const/4 p1, 0x3

    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    const/4 p1, 0x2

    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    const/4 p1, 0x1

    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyPackageUsageCnt:[[J

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mWeeklyRangingCnt:[J

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
