.class public final Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;
.super Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final nextAnimSet:Landroid/animation/AnimatorSet;

.field public final startDelay:I

.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/String;Landroid/animation/AnimatorSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/animation/AnimatorSet;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const-string p1, "SecQuickSettingsAffordance"

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->nextAnimSet:Landroid/animation/AnimatorSet;

    iput p4, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->startDelay:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/String;Landroid/animation/AnimatorSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;-><init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/String;Landroid/animation/AnimatorSet;I)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->getLogPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget v3, v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncingCount:I

    iget-boolean v2, v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isBouncingAnimating:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onAnimationEnd isCanceled = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bouncingCount = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBouncingAnimating = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget v0, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncingCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncingCount:I

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->nextAnimSet:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->startDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->nextAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncingCount:I

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isBouncingAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->startHideAnimSet()V

    :cond_3
    :goto_1
    return-void
.end method
