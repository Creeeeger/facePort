.class public Lcom/samsung/android/settings/knox/BiometricLockTimer;
.super Ljava/lang/Object;
.source "BiometricLockTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;,
        Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;
    }
.end annotation


# instance fields
.field private mCount:J

.field private mHandler:Landroid/os/Handler;

.field private mOnTickListener:Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCount(Lcom/samsung/android/settings/knox/BiometricLockTimer;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mOnTickListener:Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimer(Lcom/samsung/android/settings/knox/BiometricLockTimer;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCount(Lcom/samsung/android/settings/knox/BiometricLockTimer;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mCount:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimer(Lcom/samsung/android/settings/knox/BiometricLockTimer;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mCount:J

    .line 33
    iput-object p3, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public setOnTickListener(Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mOnTickListener:Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    return-void
.end method

.method public start()V
    .locals 7

    .line 56
    new-instance v0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;-><init>(Lcom/samsung/android/settings/knox/BiometricLockTimer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mTask:Ljava/util/TimerTask;

    .line 76
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mTimer:Ljava/util/Timer;

    .line 77
    iget-object v2, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mTimer:Ljava/util/Timer;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;-><init>(Lcom/samsung/android/settings/knox/BiometricLockTimer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
