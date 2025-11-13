.class public final Lcom/google/android/material/appbar/StackViewGroup;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final rootView:Landroid/widget/FrameLayout;

.field public final sceneStack:Lcom/google/android/material/appbar/StackViewGroup$SceneStack;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/StackViewGroup;->rootView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/android/material/appbar/StackViewGroup$SceneStack;

    invoke-direct {v0}, Lcom/google/android/material/appbar/StackViewGroup$SceneStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/StackViewGroup;->sceneStack:Lcom/google/android/material/appbar/StackViewGroup$SceneStack;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c002a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v6, Lcom/google/android/material/appbar/StackViewGroup$showAnimator$1$1;

    invoke-direct {v6, v2}, Lcom/google/android/material/appbar/StackViewGroup$showAnimator$1$1;-><init>(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Lcom/google/android/material/appbar/StackViewGroup$hideAnimator$1$1;

    invoke-direct {p1, v0, p0}, Lcom/google/android/material/appbar/StackViewGroup$hideAnimator$1$1;-><init>(Landroid/animation/ObjectAnimator;Lcom/google/android/material/appbar/StackViewGroup;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p1, v1, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
