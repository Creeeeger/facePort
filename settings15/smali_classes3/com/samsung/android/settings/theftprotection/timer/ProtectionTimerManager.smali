.class public final Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sCountDownTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

.field public static sInstance:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public mIsPause:Z

.field public mTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;


# direct methods
.method public static -$$Nest$mupdateTime(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->mTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;

    if-eqz v0, :cond_9

    iget-boolean p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->mIsPause:Z

    if-nez p0, :cond_9

    sget-wide v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sRemainMillis:J

    sget-wide v3, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->MINUTE_MILLIS:J

    div-long v5, v1, v3

    long-to-int p0, v5

    rem-long v3, v1, v3

    sget-wide v5, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECOND_MILLIS:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    rem-long v4, v1, v5

    long-to-int v4, v4

    const/16 v5, 0xc8

    if-gt v4, v5, :cond_8

    iget-object v4, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mTimeView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;

    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondPostfix:Landroid/widget/TextView;

    const/16 v6, 0x9

    if-eqz v5, :cond_1

    rem-int/lit8 v7, v3, 0xa

    iget v8, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecond:I

    rem-int/lit8 v8, v8, 0xa

    if-eq v7, v8, :cond_1

    if-ne v7, v6, :cond_0

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7, v5}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    :cond_1
    :goto_0
    div-int/lit8 v5, v3, 0xa

    iget v7, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecond:I

    div-int/lit8 v7, v7, 0xa

    const/4 v8, 0x5

    if-eq v5, v7, :cond_3

    if-ne v5, v8, :cond_2

    iget-object v5, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondPrefix:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v5}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    goto :goto_1

    :cond_2
    iget-object v7, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondPrefix:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    goto :goto_1

    :cond_3
    iget-object v7, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondPrefix:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    :goto_1
    rem-int/lit8 v5, p0, 0xa

    iget v7, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinute:I

    rem-int/lit8 v7, v7, 0xa

    if-eq v5, v7, :cond_5

    if-ne v5, v6, :cond_4

    iget-object v5, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePostfix:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    goto :goto_2

    :cond_4
    iget-object v6, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePostfix:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    goto :goto_2

    :cond_5
    iget-object v6, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePostfix:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    :goto_2
    div-int/lit8 v5, p0, 0xa

    iget v6, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinute:I

    div-int/lit8 v6, v6, 0xa

    if-eq v5, v6, :cond_7

    if-ne v5, v8, :cond_6

    iget-object v5, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePrefix:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v5}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    goto :goto_3

    :cond_6
    iget-object v6, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePrefix:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    goto :goto_3

    :cond_7
    iget-object v6, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePrefix:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    :goto_3
    iput v3, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecond:I

    iput p0, v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinute:I

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setTimeViewContentDescription()V

    :cond_8
    iget-object p0, v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;->mCircleView:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;

    if-eqz p0, :cond_9

    sget-wide v3, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sInputMillis:J

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->updateTime(JJ)V

    :cond_9
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sInstance:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->mTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;

    sput-object v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sInstance:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v0, "ProtectionTimerManager"

    const-string v1, "ProtectionTimerManager instance already exist"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sInstance:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    return-object v0
.end method
