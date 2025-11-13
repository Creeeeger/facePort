.class public final Landroid/app/usage/UsageStats;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStats$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mActivities:Landroid/util/SparseIntArray;

.field public greylist-max-o mAppLaunchCount:I

.field public greylist-max-p mBeginTimeStamp:J

.field public greylist-max-o mChooserCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public blacklist mChooserCountsObfuscated:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-p mEndTimeStamp:J

.field public blacklist mForegroundServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mLastEvent:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist mLastTimeComponentUsed:J

.field public blacklist mLastTimeForegroundServiceUsed:J

.field public greylist-max-p mLastTimeUsed:J

.field public blacklist mLastTimeVisible:J

.field public greylist mLaunchCount:I

.field public greylist-max-p mPackageName:Ljava/lang/String;

.field public blacklist mPackageToken:I

.field public blacklist mTotalTimeForegroundServiceUsed:J

.field public greylist mTotalTimeInForeground:J

.field public blacklist mTotalTimeVisible:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/UsageStats$1;

    invoke-direct {v0}, Landroid/app/usage/UsageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/usage/UsageStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iget v0, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v0, p1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iget v0, p1, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    return-void
.end method

.method private blacklist anyForegroundServiceStarted()Z
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist eventMapToBundle(Landroid/util/ArrayMap;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private blacklist hasForegroundActivity()Z
    .locals 4

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist hasVisibleActivity()Z
    .locals 5

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist incrementServiceTimeUsed(J)V
    .locals 4

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    :cond_0
    return-void
.end method

.method private blacklist incrementTimeUsed(J)V
    .locals 4

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    :cond_0
    return-void
.end method

.method private blacklist incrementTimeVisible(J)V
    .locals 4

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iput-wide p1, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    :cond_0
    return-void
.end method

.method private blacklist mergeEventMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist mergeEventMap(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist updateActivity(Ljava/lang/String;JII)V
    .locals 2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    const/16 v0, 0x17

    if-eq p4, v0, :cond_0

    const/16 v0, 0x18

    if-eq p4, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    nop

    :cond_1
    :goto_0
    sparse-switch p4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_2

    :sswitch_1
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v1

    if-nez v1, :cond_2

    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    :cond_2
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5, p4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :sswitch_2
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v1

    if-nez v1, :cond_3

    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v1

    if-nez v1, :cond_4

    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p5, p4}, Landroid/util/SparseIntArray;->put(II)V

    nop

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist updateForegroundService(Ljava/lang/String;JI)V
    .locals 3

    const/16 v0, 0x14

    if-eq p4, v0, :cond_0

    const/16 v0, 0x13

    if-eq p4, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    nop

    :cond_1
    :goto_0
    packed-switch p4, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v1

    if-nez v1, :cond_2

    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    :cond_2
    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V
    .locals 3

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/app/usage/UsageStats;)V
    .locals 11

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Landroid/app/usage/UsageStats;->mergeEventMap(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, v1}, Landroid/app/usage/UsageStats;->mergeEventMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    :cond_0
    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iget-wide v2, p1, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    goto/16 :goto_3

    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    add-int v10, v8, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t merge UsageStats for package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with UsageStats for package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppLaunchCount()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    return v0
.end method

.method public whitelist getFirstTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public whitelist getLastTimeAnyComponentUsed()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    return-wide v0
.end method

.method public whitelist getLastTimeForegroundServiceUsed()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    return-wide v0
.end method

.method public blacklist getLastTimePackageUsed()J
    .locals 8

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v4, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v6, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    return-wide v0
.end method

.method public whitelist getLastTimeUsed()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    return-wide v0
.end method

.method public whitelist getLastTimeVisible()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    return-wide v0
.end method

.method public greylist-max-o getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;
    .locals 2

    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageStats;-><init>(Landroid/app/usage/UsageStats;)V

    const-string v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTotalTimeForegroundServiceUsed()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    return-wide v0
.end method

.method public whitelist getTotalTimeInForeground()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    return-wide v0
.end method

.method public whitelist getTotalTimeVisible()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    return-wide v0
.end method

.method public blacklist update(Ljava/lang/String;JII)V
    .locals 2

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto/16 :goto_1

    :sswitch_1
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    :cond_0
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    :cond_1
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->anyForegroundServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementServiceTimeUsed(J)V

    goto :goto_1

    :sswitch_3
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :sswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/usage/UsageStats;->updateForegroundService(Ljava/lang/String;JI)V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    goto :goto_0

    :cond_2
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    :goto_0
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    goto :goto_1

    :cond_3
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeUsed(J)V

    :cond_4
    invoke-direct {p0}, Landroid/app/usage/UsageStats;->hasVisibleActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p3}, Landroid/app/usage/UsageStats;->incrementTimeVisible(J)V

    goto :goto_1

    :sswitch_7
    invoke-direct/range {p0 .. p5}, Landroid/app/usage/UsageStats;->updateActivity(Ljava/lang/String;JII)V

    nop

    :cond_5
    :goto_1
    iput-wide p2, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    iget v1, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x7 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_7
        0x18 -> :sswitch_7
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 10

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v1}, Landroid/app/usage/UsageStats;->writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V

    iget-object v1, p0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Landroid/app/usage/UsageStats;->eventMapToBundle(Landroid/util/ArrayMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
