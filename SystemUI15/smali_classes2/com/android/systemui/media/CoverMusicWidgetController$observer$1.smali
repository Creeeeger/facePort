.class public final Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/CoverMusicWidgetController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;->this$0:Lcom/android/systemui/media/CoverMusicWidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;->this$0:Lcom/android/systemui/media/CoverMusicWidgetController;

    iget-wide v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->pauseTimerStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->pauseTimerStartedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v4, v0, v2

    const-string v5, "CoverMusicWidgetController"

    if-lez v4, :cond_1

    const-string v0, "Timer is exceed during sleep"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    goto :goto_0

    :cond_1
    sub-long/2addr v2, v0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long v0, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Timer should be set, "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sec is left"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
