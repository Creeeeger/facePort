.class public final synthetic Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;->f$3:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v3, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v3, p1, v2, p0}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    iget-object p1, v0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v1, p0, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    return-void
.end method
