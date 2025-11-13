.class public final Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;
.super Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const-string p1, "SecQuickSettingsAffordance"

    const/4 v0, 0x1

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

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v2, v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    iget-object v1, v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v3, v3, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

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

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v1, v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->startHideAnimSet()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->initAnimProperties(Z)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    :goto_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getLogPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v1, v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isHideAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v3, v3, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onAnimationEnd isHideAnimating = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isCanceled = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVisibleView = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isShowAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isBouncingAnimating:Z

    iget-object p1, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimSet:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getLogPrefix()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v1, v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    iget-boolean v0, v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " onAnimationStart isVisibleView = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isAttachedView = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean p2, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iput-boolean v0, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    invoke-virtual {p1}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->updateLayoutVisibility()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->initAnimProperties(Z)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->setCanceled(Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isShowAnimating:Z

    return-void
.end method
