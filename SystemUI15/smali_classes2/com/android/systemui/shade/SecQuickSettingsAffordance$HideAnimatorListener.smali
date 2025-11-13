.class public final Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;
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

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const-string p1, "SecQuickSettingsAffordance"

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getLogPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v1, v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isRemoveView:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onAnimationEnd isRemoveView = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isHideAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-boolean v0, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isRemoveView:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->reset$4()V

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-static {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->access$unregisterListener(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->initAnimProperties(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isHideAnimating:Z

    return-void
.end method
