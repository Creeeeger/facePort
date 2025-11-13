.class public Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;
.super Ljava/lang/Object;
.source "SamsungGlobalActionsAnimator.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SamsungGlobalActionsAnimator"


# instance fields
.field private final blacklist ALPHA_HIDE:F

.field private final blacklist ALPHA_HIDE_INT:I

.field private final blacklist ALPHA_SHOW:F

.field private final blacklist ALPHA_SHOW_INT:I

.field private final blacklist CONFIRM_ANIMATION_DURATION_DESCRIPTION:I

.field private final blacklist CONFIRM_ANIMATION_DURATION_ICON:I

.field private final blacklist CONFIRM_ANIMATION_DURATION_LIST:I

.field private final blacklist CONFIRM_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final blacklist CONFIRM_ANIMATION_SCALE:F

.field private final blacklist CONFIRM_ANIMATION_SCALE_ORIGIN:F

.field private final blacklist HIDE_DIALOG_WITHOUT_DISMISS_DURATION:I

.field private final blacklist HIDE_DIALOG_WITHOUT_DISMISS_DURATION_WITH_LOCK:I

.field private final blacklist SAFE_MODE_CONFIRM_ANIMATION_DURATION_ALPHA:I

.field private final blacklist SHOW_DISMISS_ANIMATION_DURATION:I

.field private blacklist mBackgroundView:Landroid/view/ViewGroup;

.field private blacklist mBottomView:Landroid/view/View;

.field private blacklist mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private blacklist mConfirmDescriptionView:Landroid/view/View;

.field private blacklist mConfirmIconView:Landroid/view/ViewGroup;

.field private blacklist mConfirmationView:Landroid/view/ViewGroup;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

.field private blacklist mLandListView:Landroid/view/ViewGroup;

.field private blacklist mListView:Landroid/view/ViewGroup;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private blacklist mOriginalConfirmLocationX:F

.field private blacklist mOriginalConfirmLocationY:F

.field private blacklist mPowerOffIconView:Landroid/view/View;

.field private blacklist mRootView:Landroid/view/ViewGroup;

.field private blacklist mSelectedActionView:Landroid/view/ViewGroup;

.field private blacklist mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

.field private blacklist mTargetListView:Landroid/view/ViewGroup;

.field private blacklist mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

.field private blacklist mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$Wfm8YXmAuu7qo9pqviQZW7XxM8A(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->lambda$startSetSafeModeAnimation$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$isMyEfTJUkHCbdj28oFRsHr4qHE(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->lambda$startShowConfirmAnimation$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kCB6M5QIWzgKpR_-QM5znM7pTCk(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->lambda$startShowSafeModeAnimation$1()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mBottomView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfirmDescriptionView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfirmIconView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfirmationView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogWrapper(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Lcom/samsung/android/globalactions/util/LogWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRootView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedActionView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargetListView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mTargetListView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewStateController(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)Lcom/samsung/android/globalactions/presentation/view/ViewStateController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDismissConfirmAnimatorSet(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPowerOffIconView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowConfirmAnimatorSet(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->CONFIRM_ANIMATION_SCALE_ORIGIN:F

    const v1, 0x3fa66666    # 1.3f

    iput v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->CONFIRM_ANIMATION_SCALE:F

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->CONFIRM_ANIMATION_DURATION_ICON:I

    const/16 v2, 0x190

    iput v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->CONFIRM_ANIMATION_DURATION_DESCRIPTION:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->CONFIRM_ANIMATION_DURATION_LIST:I

    iput v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->SHOW_DISMISS_ANIMATION_DURATION:I

    iput v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->HIDE_DIALOG_WITHOUT_DISMISS_DURATION_WITH_LOCK:I

    iput v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->SAFE_MODE_CONFIRM_ANIMATION_DURATION_ALPHA:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->HIDE_DIALOG_WITHOUT_DISMISS_DURATION:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->ALPHA_HIDE:F

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->ALPHA_SHOW:F

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v3, v3, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->CONFIRM_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->ALPHA_HIDE_INT:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->ALPHA_SHOW_INT:I

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-void
.end method

.method private blacklist addAnimatorListenerAdapter(Landroid/animation/AnimatorSet;Z)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$3;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$4;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void
.end method

.method private blacklist getDarkThemeBackgroundColor()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#000000"

    goto :goto_0

    :cond_0
    const-string v0, "#0A0A0A"

    :goto_0
    return-object v0
.end method

.method private blacklist getDefaultAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz p1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v4, 0x1

    aput v5, v7, v4

    const-string v5, "alpha"

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    if-eqz p1, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v8

    :goto_3
    filled-new-array {v7, v3}, [I

    move-result-object v3

    invoke-static {v2, v5, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_5

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mBackgroundView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    move v9, v3

    :goto_4
    if-eqz p1, :cond_6

    move v2, v3

    :cond_6
    new-array v3, v6, [F

    aput v9, v3, v8

    aput v2, v3, v4

    invoke-static {v7, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_5
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v2, v3, v8

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private blacklist getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 13

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    const v3, 0x3fa66666    # 1.3f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v2, 0x1

    aput v5, v7, v2

    const-string v5, "scaleX"

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v7

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    new-array v9, v6, [F

    aput v7, v9, v8

    aput v3, v9, v2

    const-string v3, "scaleY"

    invoke-static {v5, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    if-eqz p1, :cond_2

    iget v9, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {p0, v9}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    :goto_2
    new-array v10, v6, [F

    aput v7, v10, v8

    aput v9, v10, v2

    const-string v7, "y"

    invoke-static {v5, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    if-eqz p1, :cond_3

    iget v10, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationX:F

    iget-object v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    goto :goto_3

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v10, v11}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    :goto_3
    new-array v11, v6, [F

    aput v9, v11, v8

    aput v10, v11, v2

    const-string v9, "x"

    invoke-static {v7, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    new-array v11, v6, [F

    aput v10, v11, v8

    aput v4, v11, v2

    const-string v4, "alpha"

    invoke-static {v9, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x190

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v11

    if-eqz p1, :cond_5

    const/16 v12, 0xff

    goto :goto_5

    :cond_5
    move v12, v8

    :goto_5
    filled-new-array {v11, v12}, [I

    move-result-object v11

    invoke-static {v10, v4, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v1, v10, v8

    aput-object v3, v10, v2

    aput-object v9, v10, v6

    const/4 v2, 0x3

    aput-object v4, v10, v2

    const/4 v2, 0x4

    aput-object v5, v10, v2

    const/4 v2, 0x5

    aput-object v7, v10, v2

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->CONFIRM_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->addAnimatorListenerAdapter(Landroid/animation/AnimatorSet;Z)V

    return-object v0
.end method

.method private blacklist getOriginalLocationX(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method private blacklist getOriginalLocationY(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method private blacklist getSafeModeConfirmAnimation(Z)Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const v4, 0x3fa66666    # 1.3f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x2

    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v3, v8, v9

    const/4 v3, 0x1

    aput v6, v8, v3

    const-string v6, "scaleX"

    invoke-static {v2, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v6, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v8, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    new-array v10, v7, [F

    aput v8, v10, v9

    aput v4, v10, v3

    const-string v4, "scaleY"

    invoke-static {v6, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v8, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    if-eqz p1, :cond_2

    iget v10, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    goto :goto_2

    :cond_2
    iget-object v10, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {v0, v10}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    :goto_2
    new-array v11, v7, [F

    aput v8, v11, v9

    aput v10, v11, v3

    const-string v8, "y"

    invoke-static {v6, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget-object v10, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v8, v10

    div-int/2addr v8, v7

    iget-object v10, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v11, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v11

    if-eqz p1, :cond_3

    iget v12, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationX:F

    int-to-float v13, v8

    add-float/2addr v12, v13

    iget-object v13, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    goto :goto_3

    :cond_3
    iget-object v12, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v13, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v12, v13}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    :goto_3
    new-array v13, v7, [F

    aput v11, v13, v9

    aput v12, v13, v3

    const-string v11, "x"

    invoke-static {v10, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v2, v11, v9

    aput-object v4, v11, v3

    aput-object v6, v11, v7

    const/4 v12, 0x3

    aput-object v10, v11, v12

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v12, 0x0

    const-string v13, "alpha"

    if-eqz p1, :cond_4

    iget-object v14, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v15, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v15

    new-array v7, v7, [F

    aput v15, v7, v9

    aput v5, v7, v3

    invoke-static {v14, v13, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v7, v3, [Landroid/animation/Animator;

    aput-object v5, v7, v9

    invoke-virtual {v11, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v7, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_4
    iget-object v14, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v15, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v15

    new-array v7, v7, [F

    aput v15, v7, v9

    aput v5, v7, v3

    invoke-static {v14, v13, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v7, v3, [Landroid/animation/Animator;

    aput-object v5, v7, v9

    invoke-virtual {v11, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v7, v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_4
    const-wide/16 v12, 0xc8

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v11, v3, v9

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1
.end method

.method private blacklist initViews()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getBackgroundView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mBackgroundView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getListView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getLandscapeListView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getBottomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mBottomView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmationView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    return-void
.end method

.method private blacklist initializeConfirmBackgroundView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    const-string v1, "#fafafa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getDarkThemeBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private blacklist initializeConfirmView()Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->createConfirmView()Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmationView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmDescriptionView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    return-object v0
.end method

.method private blacklist initializeConfirmViewForSafeMode()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initializeConfirmView()Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v1, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getPowerOffViewForSafeModeVI(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    return-void
.end method

.method private synthetic blacklist lambda$startSetSafeModeAnimation$2()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->startAnimationForSafeModeOnConfirm(F)V

    return-void
.end method

.method private synthetic blacklist lambda$startShowConfirmAnimation$0()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->saveOriginalConfirmViewLocation()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->setLocationForDescriptionView(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic blacklist lambda$startShowSafeModeAnimation$1()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->saveOriginalConfirmViewLocation()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->setLocationForDescriptionView(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getSafeModeConfirmAnimation(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private blacklist saveOriginalConfirmViewLocation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationX:F

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    return-void
.end method

.method private blacklist setLocationForDescriptionView(F)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    sub-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    float-to-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private blacklist startAnimationForSafeModeOnConfirm(F)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    add-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    add-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    float-to-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$5;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v5, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

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


# virtual methods
.method public blacklist cancelHideConfirmAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public blacklist cancelShowConfirmAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public blacklist initializeSelectedActionView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mTargetListView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getSelectedActionView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    return-void
.end method

.method public blacklist isHideConfirmAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSafeModeConfirm()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->isSafeModeConfirm()Z

    move-result v0

    return v0
.end method

.method public blacklist isShowConfirmAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setCallback(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initViews()V

    return-void
.end method

.method public blacklist setListViewLand()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mTargetListView:Landroid/view/ViewGroup;

    return-void
.end method

.method public blacklist setListViewPort()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mTargetListView:Landroid/view/ViewGroup;

    return-void
.end method

.method public blacklist showMainViewLand()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->setListViewLand()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public blacklist showMainViewPort()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->setListViewPort()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public blacklist startDismissAnimation(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getDefaultAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_POWER_OFF_LOCK:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_0
    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$2;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public blacklist startDismissConfirmAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getForceDismissState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->setFlagsForForceDismiss(Z)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public blacklist startDismissSafeModeAnimation()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getSafeModeConfirmAnimation(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public blacklist startSetSafeModeAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->saveOriginalConfirmViewLocation()V

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initializeConfirmViewForSafeMode()V

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public blacklist startShowAnimation()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->getDefaultAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$1;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public blacklist startShowConfirmAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initializeConfirmView()Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initializeSelectedActionView()V

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initializeConfirmBackgroundView()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public blacklist startShowSafeModeAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initializeConfirmViewForSafeMode()V

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initializeSelectedActionView()V

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->initializeConfirmBackgroundView()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
