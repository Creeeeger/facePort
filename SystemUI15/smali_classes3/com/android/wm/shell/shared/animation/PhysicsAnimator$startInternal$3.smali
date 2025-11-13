.class public final Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/shared/animation/PhysicsAnimator$EndListener;


# instance fields
.field public final synthetic $animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public final synthetic $flingMax:F

.field public final synthetic $flingMin:F

.field public final synthetic $springConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final synthetic this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            "FF",
            "Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;",
            "Lcom/android/wm/shell/shared/animation/PhysicsAnimator;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput p2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    iput p3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    iput-object p4, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput-object p5, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-eqz p4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 p4, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, p4

    :goto_0
    iget v2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    cmpg-float v3, v2, p5

    iget v4, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    if-gtz v3, :cond_2

    cmpg-float v3, p5, v4

    if-gtz v3, :cond_2

    move p4, v1

    :cond_2
    xor-int/2addr p4, v1

    if-nez p2, :cond_3

    if-eqz p4, :cond_9

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput p6, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iget v3, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    sget-object v5, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    const v5, -0x800001

    cmpg-float v3, v3, v5

    if-nez v3, :cond_7

    if-eqz p2, :cond_5

    cmpg-float p2, p6, p3

    if-gez p2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    iput v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_7

    cmpg-float p2, p5, v2

    if-gez p2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    iput v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    :cond_7
    :goto_3
    sget-object p2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object p2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_8

    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p3, p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;-><init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2;

    invoke-direct {p1, p0, v0, p3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2;-><init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;)V

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {p2, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    check-cast p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, p3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->applyToAnimation$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell_shared(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_9
    :goto_4
    return-void
.end method
