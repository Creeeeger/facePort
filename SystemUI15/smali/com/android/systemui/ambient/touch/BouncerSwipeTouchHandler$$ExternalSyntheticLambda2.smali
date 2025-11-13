.class public final synthetic Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentExpansion:F

    new-instance v0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;-><init>(FZZ)V

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    invoke-interface {p0, v0}, Lcom/android/systemui/ambient/touch/scrim/ScrimController;->expand(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    return-void
.end method
