.class public final Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mRingBellOfTowerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    rem-long/2addr v6, v4

    sub-long/2addr v2, v6

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
