.class public final synthetic Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

.field public final synthetic f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public final synthetic f$2:Landroidx/dynamicanimation/animation/SpringForce;

.field public final synthetic f$3:Ljava/lang/Float;

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$2:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Float;

    iput p5, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$4:F

    iput p6, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$5:F

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    if-nez p2, :cond_1

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget-object p2, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->setRestingPosition(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    move v4, p1

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$5:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$4:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;->f$2:Landroidx/dynamicanimation/animation/SpringForce;

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void
.end method
