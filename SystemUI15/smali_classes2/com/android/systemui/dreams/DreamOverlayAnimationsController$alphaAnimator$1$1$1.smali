.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $from:F

.field public final synthetic $to:F

.field public final synthetic $va:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/animation/ValueAnimator;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;->$va:Landroid/animation/ValueAnimator;

    iput p3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;->$to:F

    iput p4, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;->$from:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;->$va:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;->$to:F

    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1$1;->$from:F

    cmpg-float p0, v2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, v1, p1, p0}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->access$setElementsAlphaAtPosition(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;FIZ)V

    return-void
.end method
