.class final Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;"
        }
    .end annotation
.end field

.field final synthetic $currentValue:F

.field final synthetic $flingConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field final synthetic $target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/shared/animation/PhysicsAnimator;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;",
            "Lcom/android/wm/shell/shared/animation/PhysicsAnimator;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            "Ljava/lang/Object;",
            "F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iput-object p2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput-object p4, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$target:Ljava/lang/Object;

    iput p5, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$currentValue:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$currentValue:F

    iget v2, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iget v2, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    filled-new-array {v1}, [Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel([Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$target:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v4, v2, v1}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;

    invoke-direct {v2, v0, v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;-><init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2;

    invoke-direct {v2, v0, v1, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2;-><init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;)V

    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Landroidx/dynamicanimation/animation/FlingAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;->$flingConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_1

    const v1, -0x3f79999a    # -4.2f

    mul-float/2addr v0, v1

    iget-object v1, v4, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    iput v0, v1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    iget v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iput v0, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    iget v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    iput v0, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    iget p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    iput p0, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Friction must be positive"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
