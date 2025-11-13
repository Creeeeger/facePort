.class public final Lcom/android/wm/shell/transition/SplitActivityAnimationLoader;
.super Lcom/android/wm/shell/transition/AnimationLoader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/AnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final loadAnimationIfPossible()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/SplitActivityAnimationLoader;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v2, v1, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    const v2, 0x10c001a

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/transition/SplitActivityAnimationLoader;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isOpeningTransitionType()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, v1, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-eqz p0, :cond_1

    const p0, 0x10a015a

    goto :goto_0

    :cond_1
    const p0, 0x10a015b

    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, v1, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-eqz p0, :cond_3

    const p0, 0x10a0158

    goto :goto_1

    :cond_3
    const p0, 0x10a0159

    :goto_1
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_5

    const-wide/16 v2, 0x150

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SplitActivityAnimationLoader"

    return-object p0
.end method
