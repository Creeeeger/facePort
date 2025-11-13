.class public final Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;
.super Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aiagent/AiAgentEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aiagent/AiAgentEffect;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    const-string p1, "AiAgentEffect"

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getLogPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v2, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    iget-object v1, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v3, v3, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onAnimationCancel isAnimating = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isRunning = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isAttachedView = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->setCanceled(Z)V

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v1, v0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/aiagent/AiAgentEffect;->initAnimProperties(Z)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getDebug()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v3, v2, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    iget-boolean v4, v2, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    iget-object v2, v2, Lcom/android/systemui/aiagent/AiAgentEffect;->layout:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAnimationStart isVisibleView = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAttachedView = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visible = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v1, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iput-boolean v2, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    invoke-virtual {p1}, Lcom/android/systemui/aiagent/AiAgentEffect;->updateLayoutVisibility()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-object v3, v3, Lcom/android/systemui/aiagent/AiAgentEffect;->layout:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-object v4, v4, Lcom/android/systemui/aiagent/AiAgentEffect;->layout:Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAnimationStart visible = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/aiagent/AiAgentEffect;->initAnimProperties(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->setCanceled(Z)V

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iput-boolean v2, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->isShowAnimating:Z

    const-string v1, "AiAgentEffect"

    :try_start_0
    iget-object v3, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->drawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->powerManager:Landroid/os/PowerManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->drawWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v3, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->drawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_5

    move-object v0, v3

    :cond_5
    if-eqz v0, :cond_6

    const-string v3, "applyDrawWakeLock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->wakeLockHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->releaseRunnable:Lkotlin/jvm/functions/Function0;

    new-instance v3, Lcom/android/systemui/aiagent/AiAgentEffect$sam$java_lang_Runnable$0;

    invoke-direct {v3, p1}, Lcom/android/systemui/aiagent/AiAgentEffect$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v0, "applyDrawWakeLock exception = "

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVideoPlaying:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    if-eqz p1, :cond_7

    iput-boolean v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVideoPlaying:Z

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->resourceFd:Landroid/content/res/AssetFileDescriptor;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->config:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->load(Landroid/content/res/AssetFileDescriptor;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;)V

    invoke-virtual {p1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->play()V

    :cond_7
    return-void
.end method
