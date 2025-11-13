.class public final synthetic Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/shared/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    :cond_0
    return-void
.end method
