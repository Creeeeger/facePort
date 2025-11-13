.class public Landroid/view/ImeBackAnimationController;
.super Ljava/lang/Object;
.source "ImeBackAnimationController.java"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# static fields
.field private static final blacklist BACK_GESTURE:Landroid/view/animation/Interpolator;

.field private static final blacklist EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

.field private static final blacklist PEEK_FRACTION:F = 0.1f

.field private static final blacklist POST_COMMIT_CANCEL_DURATION_MS:I = 0x32

.field private static final blacklist POST_COMMIT_DURATION_MS:I = 0xc8

.field private static final blacklist STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "ImeBackAnimationController"


# instance fields
.field private final blacklist mInsetsController:Landroid/view/InsetsController;

.field private blacklist mIsPreCommitAnimationInProgress:Z

.field private blacklist mLastProgress:F

.field private blacklist mPostCommitAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mStartRootScrollY:I

.field private blacklist mTriggerBack:Z

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private blacklist mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method public static synthetic blacklist $r8$lambda$k6hhw-kcx_rhv-_zA6i_ff-iUwA(Landroid/view/ImeBackAnimationController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->lambda$startPostCommitAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPreCommitAnimationInProgress(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastProgress(Landroid/view/ImeBackAnimationController;)F
    .locals 0

    iget p0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerBack(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/ImeBackAnimationController;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;)Landroid/view/WindowInsetsAnimationController;
    .locals 0

    iget-object p0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartRootScrollY(Landroid/view/ImeBackAnimationController;I)V
    .locals 0

    iput p1, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misAdjustPan(Landroid/view/ImeBackAnimationController;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isAdjustPan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->reset()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPreCommitProgress(Landroid/view/ImeBackAnimationController;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartPostCommitAnim(Landroid/view/ImeBackAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/BackGestureInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BackGestureInterpolator;-><init>()V

    sput-object v0, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/ImeBackAnimationController;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/ImeBackAnimationController;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InsetsController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    iput-object p2, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    iput-object p1, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    return-void
.end method

.method private blacklist isAdjustPan()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isBackAnimationAllowed()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-nez v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isHideAnimationInProgress()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$startPostCommitAnim$0(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v4, v3}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->reset()V

    :goto_0
    return-void
.end method

.method private blacklist notifyHideIme()V
    .locals 5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/16 v3, 0x34

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    return-void
.end method

.method private blacklist reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->resetPostCommitAnimator()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1, v0}, Landroid/view/InsetsController;->setPredictiveBackImeHideAnimInProgress(Z)V

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    return-void
.end method

.method private blacklist resetPostCommitAnimator()V
    .locals 1

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private blacklist setPreCommitProgress(F)V
    .locals 9

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    int-to-float v1, v1

    sub-float v2, v1, v0

    sget-object v3, Landroid/view/ImeBackAnimationController;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v5, v2, v4

    mul-float/2addr v5, v3

    sub-float v5, v2, v5

    float-to-int v5, v5

    iget v6, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/view/ImeBackAnimationController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget v8, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    int-to-float v8, v8

    mul-float/2addr v4, v3

    sub-float v4, v7, v4

    mul-float/2addr v8, v4

    float-to-int v4, v8

    invoke-virtual {v6, v4}, Landroid/view/ViewRootImpl;->setScrollY(I)V

    :cond_1
    iget-object v4, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    const/4 v6, 0x0

    invoke-static {v6, v6, v6, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v6

    invoke-interface {v4, v6, v7, p1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    :cond_2
    return-void
.end method

.method private blacklist startPostCommitAnim(Z)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    :goto_0
    int-to-float v3, v1

    int-to-float v4, v2

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v0

    const/4 v0, 0x1

    aput v4, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    sget-object v4, Landroid/view/ImeBackAnimationController;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v4, Landroid/view/ImeBackAnimationController;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/ImeBackAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/view/ImeBackAnimationController$$ExternalSyntheticLambda0;-><init>(Landroid/view/ImeBackAnimationController;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/ImeBackAnimationController$2;

    invoke-direct {v4, p0, p1}, Landroid/view/ImeBackAnimationController$2;-><init>(Landroid/view/ImeBackAnimationController;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    const-wide/16 v4, 0xc8

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x32

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mPostCommitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p1, :cond_4

    iget-object v3, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v3, v0}, Landroid/view/InsetsController;->setPredictiveBackImeHideAnimInProgress(Z)V

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->notifyHideIme()V

    :cond_4
    iget v0, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    :cond_5
    return-void

    :cond_6
    :goto_3
    iput-boolean p1, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ImeBackAnimationController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mTriggerBack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ImeBackAnimationController;->mTriggerBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsPreCommitAnimationInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStartRootScrollY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ImeBackAnimationController;->mStartRootScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isBackAnimationAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isAdjustPan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isAdjustPan()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isHideAnimationInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onBackCancelled()V
    .locals 1

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    return-void
.end method

.method public whitelist onBackInvoked()V
    .locals 2

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsController;->hide(I)V

    return-void
.end method

.method public whitelist onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    iput v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    iget v0, p0, Landroid/view/ImeBackAnimationController;->mLastProgress:F

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .locals 11

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isBackAnimationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImeBackAnimationController"

    const-string/jumbo v1, "onBackStarted -> not playing predictive back animation due to softinput mode adjustResize AND no animation callback registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->isHideAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeBackAnimationController;->mIsPreCommitAnimationInProgress:Z

    iget-object v0, p0, Landroid/view/ImeBackAnimationController;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/view/ImeBackAnimationController;->resetPostCommitAnimator()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ImeBackAnimationController;->setPreCommitProgress(F)V

    return-void

    :cond_2
    iget-object v1, p0, Landroid/view/ImeBackAnimationController;->mInsetsController:Landroid/view/InsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    new-instance v4, Landroid/view/ImeBackAnimationController$1;

    invoke-direct {v4, p0}, Landroid/view/ImeBackAnimationController$1;-><init>(Landroid/view/ImeBackAnimationController;)V

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V

    return-void
.end method
