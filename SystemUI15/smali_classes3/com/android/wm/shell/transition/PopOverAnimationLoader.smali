.class public final Lcom/android/wm/shell/transition/PopOverAnimationLoader;
.super Lcom/android/wm/shell/transition/AnimationLoader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/AnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iget-boolean p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsPopOverAnimationNeeded:Z

    return p0
.end method

.method public final loadAnimationIfPossible()V
    .locals 12

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v10, v2, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float v11, v1, v0

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isOpeningTransitionType()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    sget-object v2, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-boolean v4, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x0

    :cond_2
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-eqz v1, :cond_4

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v6, 0x3f733333    # 0.95f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f733333    # 0.95f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    sget-object v2, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-nez v1, :cond_4

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v2, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f733333    # 0.95f

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    sget-object v4, Lcom/android/wm/shell/transition/PopOverAnimationLoader;->POP_OVER_SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "PopOverAnimationLoader"

    return-object p0
.end method
