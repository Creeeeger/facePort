.class public final Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;
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

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->mDataManager:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    return-void
.end method


# virtual methods
.method public final getData(II)J
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->mDataManager:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :goto_0
    int-to-long p0, p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mRangingTimeSum:J

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mPrevDayRangingTime:J

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mTodayRangingTime:J

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mStateChangedTime:J

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mUwbState:I

    goto :goto_0

    :goto_1
    return-wide p0
.end method
