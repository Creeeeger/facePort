.class public Lcom/samsung/android/multiwindow/OverlayHandlerView;
.super Landroid/widget/FrameLayout;
.source "OverlayHandlerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;,
        Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;
    }
.end annotation


# static fields
.field private static final blacklist AFFORDANCE_SCALE_ANIM_DELAY:I = 0x258

.field private static final blacklist APP_ICON_SIZE_DIP:I = 0x35

.field private static final blacklist AUTO_HIDE_FADE_DURATION:I = 0x3e8

.field private static final blacklist DISMISS_DELAY_TIME:I = 0xbb8

.field private static final blacklist DRAG_SLOP_IN_DIP:I = 0x6

.field private static final blacklist FILL_HEIGHT:F

.field private static final blacklist FILL_WIDTH:F

.field private static final blacklist IS_TABLET:Z

.field private static final blacklist LONG_PRESS_TIME_OUT_FOR_POPUP_VIEW:I = 0x190

.field private static final blacklist LONG_PRESS_TIME_OUT_FOR_SPLIT_MODE:I = 0x12c

.field private static final blacklist LONG_PRESS_TIME_OUT_SYSTEM_DEFAULT:I = 0x1f4

.field private static final blacklist RESIZE_FADE_DURATION:I = 0x64

.field private static final blacklist STROKE_HEIGHT:F

.field private static final blacklist STROKE_THICKNESS:F = 0.5f

.field private static final blacklist STROKE_WIDTH:F

.field private static final blacklist TAG:Ljava/lang/String; = "OverlayHandlerView"

.field private static final blacklist TAP_TIME_OUT:I = 0xfa


# instance fields
.field private blacklist mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

.field private blacklist mAppIconSize:I

.field private blacklist mApplicationIcon:Landroid/graphics/Bitmap;

.field private blacklist mAutoHide:Z

.field private blacklist mCanLongPressed:Z

.field private final blacklist mCutoutRect:Landroid/graphics/Rect;

.field private blacklist mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

.field private blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mDefaultFitInsetsSides:I

.field private blacklist mDragSlop:I

.field private blacklist mFadeAnim:Landroid/animation/AnimatorSet;

.field private final blacklist mFadeAnimListener:Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;

.field private blacklist mFillView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

.field private blacklist mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

.field private final blacklist mHandlerAffordanceRunnable:Ljava/lang/Runnable;

.field private final blacklist mHandlerBounds:Landroid/graphics/Rect;

.field private blacklist mHandlerWidth:I

.field private final blacklist mHideRunnable:Ljava/lang/Runnable;

.field private blacklist mIsDragging:Z

.field private blacklist mIsImeShowingWhenTouched:Z

.field private blacklist mIsLongPressed:Z

.field private blacklist mIsStashed:Z

.field private final blacklist mLongPressTimeoutRunnable:Ljava/lang/Runnable;

.field private blacklist mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

.field private blacklist mOwner:Landroid/view/Window;

.field private blacklist mPaddingView:Landroid/view/ViewGroup;

.field private blacklist mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

.field private blacklist mResizeFadeAnim:Z

.field private final blacklist mShowRunnable:Ljava/lang/Runnable;

.field private blacklist mStrokeView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mVisibleOnLongPress:Z

.field private final blacklist mWM:Landroid/view/WindowManager;

.field private blacklist mWindowYOffsetInFreeform:I

.field private blacklist mWindowYOffsetInSplit:I


# direct methods
.method public static synthetic blacklist $r8$lambda$5nGbZqDA1pi8SaYalm0q12vZXIM(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->doHandlerAffordance()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnchor(Lcom/samsung/android/multiwindow/OverlayHandlerView;)Lcom/samsung/android/multiwindow/MultiSplitHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMSActions(Lcom/samsung/android/multiwindow/OverlayHandlerView;)Lcom/samsung/android/multiwindow/MultiSplitActions;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnim(Lcom/samsung/android/multiwindow/OverlayHandlerView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResizeFadeAnim(Lcom/samsung/android/multiwindow/OverlayHandlerView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mResizeFadeAnim:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoPopupAffordance(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->doPopupAffordance()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mschedulePopupAffordance(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->schedulePopupAffordance()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowImmediately(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showImmediately()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->IS_TABLET:Z

    .line 68
    if-eqz v0, :cond_0

    const v1, 0x4099999a    # 4.8f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40a00000    # 5.0f

    :goto_0
    sput v1, Lcom/samsung/android/multiwindow/OverlayHandlerView;->STROKE_HEIGHT:F

    .line 69
    if-eqz v0, :cond_1

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x42340000    # 45.0f

    :goto_1
    sput v0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->STROKE_WIDTH:F

    .line 71
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    sput v1, Lcom/samsung/android/multiwindow/OverlayHandlerView;->FILL_HEIGHT:F

    .line 72
    sub-float/2addr v0, v2

    sput v0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->FILL_WIDTH:F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    new-instance v0, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceRunnable:Ljava/lang/Runnable;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerBounds:Landroid/graphics/Rect;

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsDragging:Z

    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsStashed:Z

    .line 112
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCanLongPressed:Z

    .line 113
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    .line 114
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mVisibleOnLongPress:Z

    .line 116
    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mApplicationIcon:Landroid/graphics/Bitmap;

    .line 129
    new-instance v2, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener-IA;)V

    iput-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnimListener:Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;

    .line 130
    new-instance v0, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mShowRunnable:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHideRunnable:Ljava/lang/Runnable;

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    .line 135
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mResizeFadeAnim:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsImeShowingWhenTouched:Z

    .line 142
    new-instance v0, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCutoutRect:Landroid/graphics/Rect;

    .line 161
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWM:Landroid/view/WindowManager;

    .line 162
    return-void
.end method

.method private blacklist checkCanLongPress()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFlexPanelRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    return v0
.end method

.method private blacklist checkShowingImeAndHideIfNeeded()Z
    .locals 3

    .line 816
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 817
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 823
    .local v1, "execService":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 827
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 829
    .end local v1    # "execService":Ljava/util/concurrent/ExecutorService;
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 818
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist createHandlerAffordanceAnim()V
    .locals 8

    .line 509
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const v4, 0x3fa66666    # 1.3f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 510
    .local v0, "scaleX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 511
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 513
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v1, [F

    aput v4, v6, v3

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 514
    .local v4, "scaleY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 515
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 517
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

    .line 518
    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 519
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 520
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v3

    aput-object v4, v2, v1

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 521
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/multiwindow/OverlayHandlerView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$2;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    return-void
.end method

.method private blacklist createPopup()V
    .locals 2

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->hidePopup()V

    .line 358
    new-instance v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;-><init>(Landroid/view/View;Lcom/samsung/android/multiwindow/MultiSplitActions;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    .line 361
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->DECORCAPTION_HANDLER_AUTO_HIDE:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    new-instance v1, Lcom/samsung/android/multiwindow/OverlayHandlerView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$1;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 372
    :cond_0
    return-void
.end method

.method private blacklist doFadeAnimation(Z)V
    .locals 4
    .param p1, "fadeIn"    # Z

    .line 911
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    .line 916
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    .line 917
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 918
    .local v0, "fadeInOutAnim":Landroid/animation/ObjectAnimator;
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mResizeFadeAnim:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x64

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x3e8

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 919
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mResizeFadeAnim:Z

    if-eqz v1, :cond_3

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 920
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnimListener:Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;

    invoke-virtual {v2, p1}, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->get(Z)Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 921
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 922
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 923
    return-void
.end method

.method private blacklist doHandlerAffordance()V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 549
    :cond_0
    return-void
.end method

.method private blacklist doPopupAffordance()V
    .locals 6

    .line 568
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const-string v1, "OverlayHandlerView"

    if-eqz v0, :cond_4

    .line 569
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPopupHelpEnabled()Z

    move-result v0

    .line 570
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->hasWindowFocus()Z

    move-result v2

    .line 571
    .local v2, "hasFocus":Z
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 572
    .local v3, "visible":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPopupAffordance: enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasFocus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 573
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "freeform"

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "split"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 572
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showPopup()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 576
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->reportPopupHelpSuccess()V

    goto :goto_2

    .line 578
    :cond_2
    const-string v4, "doPopupAffordance: fail."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v0    # "enabled":Z
    .end local v2    # "hasFocus":Z
    .end local v3    # "visible":Z
    :cond_3
    :goto_2
    goto :goto_3

    .line 582
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPopupAffordance: ignore. mAnchor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mPopup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_3
    return-void
.end method

.method private blacklist getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 834
    iget v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAppIconSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 835
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 836
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 837
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 838
    return-object v0
.end method

.method private blacklist handleLongPress()Z
    .locals 10

    .line 775
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mApplicationIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isNaturalSwitchingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsStashed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mOwner:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    .line 781
    .local v0, "taskId":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 782
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.extra.TASK_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v2

    const-string v3, "android.intent.extra.NS_WINDOWING_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 784
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getStageType()I

    move-result v2

    const-string v3, "android.intent.extra.NS_STAGE_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 785
    const-string v2, "android.intent.extra.NS_MW_HANDLER_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 786
    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 787
    .local v2, "item":Landroid/content/ClipData$Item;
    new-instance v4, Landroid/content/ClipDescription;

    const-string v5, "application/octet-stream"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 789
    .local v4, "clipDescription":Landroid/content/ClipDescription;
    invoke-virtual {v4}, Landroid/content/ClipDescription;->setNaturalSwitching()V

    .line 790
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->getRootView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/content/ClipData;

    invoke-direct {v6, v4, v2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v7, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v7, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v8, 0x0

    const/16 v9, 0x100

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 793
    return v3

    .line 777
    .end local v0    # "taskId":I
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "clipDescription":Landroid/content/ClipDescription;
    :cond_1
    :goto_0
    return v1

    .line 796
    :cond_2
    return v1
.end method

.method private blacklist isConsideredAsDrag(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 767
    iget v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 768
    .local v0, "x_moved":I
    iget v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mTouchDownY:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 769
    .local v1, "y_moved":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 770
    .local v2, "moveDistance":I
    iget v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDragSlop:I

    if-lt v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private blacklist isTaskRoot()Z
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mOwner:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0}, Landroid/view/Window;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 844
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static synthetic blacklist lambda$checkShowingImeAndHideIfNeeded$4(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .line 824
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 825
    const-string v0, "OverlayHandlerView"

    const-string v1, "Hide the Ime to use the multi-window handler."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method private blacklist loadApplicationIconThread()V
    .locals 2

    .line 800
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 801
    .local v0, "execService":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 806
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 807
    return-void
.end method

.method private blacklist repositionPopup()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showPopup()Z

    .line 394
    :cond_0
    return-void
.end method

.method private blacklist schedulePopupAffordance()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPopupHelpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->requestLayout()V

    .line 557
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/multiwindow/OverlayHandlerView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$3;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 565
    :cond_1
    return-void

    .line 553
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist showImmediately()V
    .locals 1

    .line 926
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->unscheduleFadeAnimation()V

    .line 927
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFadeAnim:Landroid/animation/AnimatorSet;

    .line 931
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setVisibility(I)V

    .line 932
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setAlpha(F)V

    .line 933
    return-void
.end method

.method private blacklist showPopup()Z
    .locals 2

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "isPopupShow":Z
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    if-eqz v1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->unscheduleFadeAnimation()V

    .line 378
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->show()Z

    move-result v0

    .line 379
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setVisibility(I)V

    .line 381
    :cond_0
    return v0
.end method

.method private blacklist unscheduleFadeAnimation()V
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 907
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 908
    return-void
.end method

.method private blacklist updateResourcesFromDCResources()V
    .locals 10

    .line 401
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->createPopup()V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v0}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v0

    .line 406
    .local v0, "density":F
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDragSlop:I

    .line 407
    const/high16 v1, 0x42540000    # 53.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAppIconSize:I

    .line 411
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x105042d

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWindowYOffsetInFreeform:I

    .line 412
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x105042e

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWindowYOffsetInSplit:I

    .line 414
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsStashed:Z

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x105042b

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1050429

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    nop

    .line 417
    .local v1, "horizontalPadding":I
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x105042a

    invoke-virtual {v2, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v2

    .line 419
    .local v2, "veticalPadding":I
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitWindowBottom()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v4, 0x105042c

    invoke-virtual {v3, v4}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v3

    .line 421
    .local v3, "topPadding":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v4

    .line 422
    .local v3, "paddings":Landroid/graphics/Rect;
    goto :goto_1

    .line 423
    .end local v3    # "paddings":Landroid/graphics/Rect;
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 425
    .restart local v3    # "paddings":Landroid/graphics/Rect;
    :goto_1
    sget v4, Lcom/samsung/android/multiwindow/OverlayHandlerView;->STROKE_WIDTH:F

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 426
    .local v4, "strokeWidth":I
    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v4

    iput v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerWidth:I

    .line 427
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPaddingView:Landroid/view/ViewGroup;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 428
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mStrokeView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    int-to-float v6, v4

    sget v7, Lcom/samsung/android/multiwindow/OverlayHandlerView;->STROKE_HEIGHT:F

    mul-float/2addr v7, v0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->-$$Nest$msetSize(Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;FF)V

    .line 429
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFillView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    sget v6, Lcom/samsung/android/multiwindow/OverlayHandlerView;->FILL_WIDTH:F

    mul-float/2addr v6, v0

    sget v7, Lcom/samsung/android/multiwindow/OverlayHandlerView;->FILL_HEIGHT:F

    mul-float/2addr v7, v0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->-$$Nest$msetSize(Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;FF)V

    .line 430
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFillView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->-$$Nest$mupdateFocusedColor(Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;)V

    .line 431
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFillView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    iget-object v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiSplitActions;->hasBarFocus()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->-$$Nest$mupdateColor(Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;Z)V

    .line 432
    return-void
.end method

.method private blacklist updateStashedState()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isStashed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsStashed:Z

    .line 398
    return-void
.end method

.method private blacklist updateViewLayout(Z)V
    .locals 14
    .param p1, "forceUpdate"    # Z

    .line 435
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 436
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_b

    .line 437
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v1

    .line 438
    .local v1, "isPopOver":Z
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 439
    .local v2, "oldFlag":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 440
    .local v3, "oldY":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 441
    .local v4, "oldX":I
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 442
    .local v5, "oldCutoutMode":I
    iget-object v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 443
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 444
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 445
    iget-object v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6}, Lcom/android/internal/policy/DecorView;->getPaddingTop()I

    move-result v6

    iget v9, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWindowYOffsetInFreeform:I

    sub-int/2addr v6, v9

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5

    .line 447
    :cond_0
    const/4 v6, 0x2

    if-eqz v1, :cond_2

    .line 448
    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x200

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 449
    iget-object v9, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 450
    .local v9, "displayWidth":I
    iget-object v10, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 451
    .local v10, "windowWidth":I
    sub-int v11, v9, v10

    .line 452
    .local v11, "widthOffset":I
    iget-object v12, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v12}, Lcom/android/internal/policy/DecorView;->getLayoutDirection()I

    move-result v12

    if-ne v12, v7, :cond_1

    .line 453
    iget v12, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerWidth:I

    sub-int v12, v9, v12

    div-int/2addr v12, v6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 455
    :cond_1
    iget v12, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerWidth:I

    sub-int v12, v9, v12

    div-int/2addr v12, v6

    sub-int/2addr v12, v11

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 457
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateViewLayout: displayWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " lp.x="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " width="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "OverlayHandlerView"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v9    # "displayWidth":I
    .end local v10    # "windowWidth":I
    .end local v11    # "widthOffset":I
    goto :goto_1

    .line 459
    :cond_2
    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, -0x201

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 460
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 463
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitWindowBottom()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 464
    iget v9, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWindowYOffsetInSplit:I

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 466
    :cond_3
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 469
    :goto_2
    iget v9, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDefaultFitInsetsSides:I

    invoke-virtual {v0, v9}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 470
    iget-object v9, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v9}, Lcom/android/internal/policy/DecorView;->isStatusBarHidden()Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v1, :cond_4

    .line 471
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v0, v9}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    goto :goto_3

    .line 473
    :cond_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    or-int/2addr v9, v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v0, v9}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 476
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->isFullScreenHandlerOverlappedWithCutout()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 477
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_4

    .line 479
    :cond_5
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 481
    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setFitInsetsAndCutoutModeIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z

    .line 483
    :goto_5
    if-eqz v1, :cond_6

    .line 484
    const v6, 0x800033

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_6

    .line 486
    :cond_6
    const/16 v6, 0x31

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 489
    :goto_6
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->DECORCAPTION_HANDLER_AUTO_HIDE:Z

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    if-eqz v6, :cond_8

    :cond_7
    if-nez p1, :cond_9

    :cond_8
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne v2, v6, :cond_9

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v3, v6, :cond_9

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v4, v6, :cond_9

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v5, v6, :cond_b

    .line 493
    :cond_9
    if-eqz p1, :cond_a

    iget-object v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v6

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    if-eqz v6, :cond_a

    .line 494
    invoke-virtual {p0, v8}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setVisibility(I)V

    .line 495
    iput-boolean v8, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    .line 496
    invoke-virtual {p0, v7}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setAutoHide(Z)V

    .line 498
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v6, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    .end local v1    # "isPopOver":Z
    .end local v2    # "oldFlag":I
    .end local v3    # "oldY":I
    .end local v4    # "oldX":I
    .end local v5    # "oldCutoutMode":I
    :cond_b
    return-void
.end method


# virtual methods
.method blacklist createWindow(Lcom/samsung/android/multiwindow/MultiSplitHandler;Lcom/samsung/android/multiwindow/MultiSplitActions;)V
    .locals 12
    .param p1, "anchor"    # Lcom/samsung/android/multiwindow/MultiSplitHandler;
    .param p2, "actions"    # Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 178
    iput-object p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 179
    iput-object p2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 180
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mOwner:Landroid/view/Window;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isStashed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsStashed:Z

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindow: on request. ohv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateResourcesFromDCResources()V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    .line 189
    .local v0, "isPopOver":Z
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 190
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 191
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 192
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x208

    if-eqz v5, :cond_0

    .line 193
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 195
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getPaddingTop()I

    move-result v3

    iget v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWindowYOffsetInFreeform:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 197
    :cond_0
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 198
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 200
    iget-object v7, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 201
    .local v7, "displayWidth":I
    iget-object v8, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 202
    .local v8, "windowWidth":I
    sub-int v9, v7, v8

    .line 203
    .local v9, "widthOffset":I
    iget-object v10, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v10}, Lcom/android/internal/policy/DecorView;->getLayoutDirection()I

    move-result v10

    if-ne v10, v6, :cond_1

    .line 204
    iget v10, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerWidth:I

    sub-int v10, v7, v10

    div-int/2addr v10, v3

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 206
    :cond_1
    iget v10, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerWidth:I

    sub-int v10, v7, v10

    div-int/2addr v10, v3

    sub-int/2addr v10, v9

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 208
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createWindow: displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " lp.x="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OverlayHandlerView"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v7    # "displayWidth":I
    .end local v8    # "windowWidth":I
    .end local v9    # "widthOffset":I
    goto :goto_1

    .line 210
    :cond_2
    const/16 v7, 0x8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 211
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 213
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitWindowBottom()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    iget v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWindowYOffsetInSplit:I

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 216
    :cond_3
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 219
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->isFullScreenHandlerOverlappedWithCutout()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 220
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 224
    :cond_4
    :goto_3
    const/high16 v3, 0x20000

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 225
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 227
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v5, 0x8000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 229
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 230
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 231
    if-eqz v0, :cond_5

    .line 232
    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_4

    .line 234
    :cond_5
    const/16 v3, 0x31

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 236
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSHandler:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mOwner:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDefaultFitInsetsSides:I

    .line 238
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isStatusBarHidden()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    .line 239
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    goto :goto_5

    .line 241
    :cond_6
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    or-int/2addr v3, v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 243
    :goto_5
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setFitInsetsAndCutoutModeIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z

    .line 244
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v3, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWindow: done. ohv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 605
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 606
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 608
    .local v2, "handler":Landroid/os/Handler;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_a

    .line 742
    :pswitch_0
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsDragging:Z

    .line 743
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    .line 745
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsImeShowingWhenTouched:Z

    .line 746
    if-eqz v2, :cond_14

    .line 747
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 637
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->isConsideredAsDrag(II)Z

    move-result v3

    .line 638
    .local v3, "isConsideredAsDrag":Z
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCanLongPressed:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    if-nez v6, :cond_8

    .line 639
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 640
    .local v6, "timeOut":I
    const/16 v7, 0x1f4

    if-ne v6, v7, :cond_1

    .line 641
    iget-object v7, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 642
    const/16 v6, 0x190

    goto :goto_0

    .line 644
    :cond_0
    const/16 v6, 0x12c

    goto :goto_0

    .line 647
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 648
    const/16 v7, 0x190

    if-ge v6, v7, :cond_3

    .line 649
    const/16 v6, 0x190

    goto :goto_0

    .line 652
    :cond_2
    const/16 v7, 0x12c

    if-ge v6, v7, :cond_3

    .line 653
    const/16 v6, 0x12c

    .line 658
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    int-to-long v9, v6

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v5

    .line 659
    .local v7, "exceedTimeout":Z
    :goto_1
    if-eqz v2, :cond_6

    if-nez v3, :cond_5

    if-eqz v7, :cond_6

    .line 661
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 664
    :cond_6
    if-nez v3, :cond_8

    if-eqz v7, :cond_8

    .line 665
    iget-boolean v8, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsImeShowingWhenTouched:Z

    if-nez v8, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->handleLongPress()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 666
    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    .line 667
    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mVisibleOnLongPress:Z

    goto :goto_2

    .line 672
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 673
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCanLongPressed:Z

    .line 680
    .end local v6    # "timeOut":I
    .end local v7    # "exceedTimeout":Z
    :cond_8
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsDragging:Z

    if-nez v6, :cond_14

    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    if-nez v6, :cond_14

    if-eqz v3, :cond_14

    .line 681
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .line 683
    .local v6, "root":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_9

    .line 684
    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getLastRawForScaledWindow()[F

    move-result-object v7

    .line 685
    .local v7, "pos":[F
    aget v5, v7, v5

    .line 686
    .local v5, "movingX":F
    aget v7, v7, v4

    .line 687
    .local v7, "movingY":F
    goto :goto_3

    .line 688
    .end local v5    # "movingX":F
    .end local v7    # "movingY":F
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    .line 689
    .restart local v5    # "movingX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    .line 692
    .restart local v7    # "movingY":F
    :goto_3
    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->startMovingTask(FF)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 693
    iget-object v8, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v8, v4}, Lcom/android/internal/policy/DecorView;->notifyMovingTask(Z)V

    .line 695
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->hidePopup()V

    .line 696
    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsDragging:Z

    .line 697
    .end local v5    # "movingX":F
    .end local v6    # "root":Landroid/view/ViewRootImpl;
    .end local v7    # "movingY":F
    goto/16 :goto_a

    .line 701
    .end local v3    # "isConsideredAsDrag":Z
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isMovingTask()Z

    move-result v3

    const-string v6, "OverlayHandlerView"

    if-nez v3, :cond_11

    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsDragging:Z

    if-nez v3, :cond_11

    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 702
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->isOverlayHandlerActivated()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 704
    .local v7, "elapsedTime":J
    const-wide/16 v9, 0xfa

    cmp-long v3, v7, v9

    if-gez v3, :cond_b

    move v3, v4

    goto :goto_4

    :cond_b
    move v3, v5

    .line 705
    .local v3, "isTap":Z
    :goto_4
    iget-object v9, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->isConsideredAsDrag(II)Z

    move-result v9

    if-nez v9, :cond_c

    move v9, v4

    goto :goto_5

    :cond_c
    move v9, v5

    .line 706
    .local v9, "isLongPressed":Z
    :goto_5
    if-nez v3, :cond_e

    if-eqz v9, :cond_d

    goto :goto_6

    .line 722
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignore. isTap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isLP="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " contains="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerBounds:Landroid/graphics/Rect;

    .line 723
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isDrag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->isConsideredAsDrag(II)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 722
    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 708
    :cond_e
    :goto_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowManagerGlobal;->dispatchVirtualActionOutside()V

    .line 711
    iget-object v10, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setPopupHelpDisabled()V

    .line 714
    iget-boolean v10, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsImeShowingWhenTouched:Z

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v10

    if-nez v10, :cond_f

    goto :goto_7

    .line 717
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignore. mIsImeShowingWhenTouched="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsImeShowingWhenTouched:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isSplit="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 718
    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 717
    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 715
    :cond_10
    :goto_7
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showPopup()Z

    .line 725
    .end local v3    # "isTap":Z
    .end local v7    # "elapsedTime":J
    .end local v9    # "isLongPressed":Z
    :goto_8
    goto :goto_9

    .line 726
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore. mIsDragging="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsDragging:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mIsLongPressed="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " isMovingTask="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 727
    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->isMovingTask()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_9
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsDragging:Z

    .line 731
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    .line 733
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsImeShowingWhenTouched:Z

    .line 734
    if-eqz v2, :cond_14

    .line 735
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 610
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mApplicationIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_12

    .line 611
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->loadApplicationIconThread()V

    .line 614
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->checkShowingImeAndHideIfNeeded()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsImeShowingWhenTouched:Z

    .line 618
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsDragging:Z

    .line 619
    iput v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mTouchDownX:I

    .line 620
    iput v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mTouchDownY:I

    .line 623
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    .line 624
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mVisibleOnLongPress:Z

    .line 625
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->checkCanLongPress()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCanLongPressed:Z

    .line 627
    if-eqz v2, :cond_13

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 628
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 629
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x258

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 633
    :cond_13
    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->performHapticFeedback(I)Z

    .line 634
    nop

    .line 753
    :cond_14
    :goto_a
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAnchor()Lcom/samsung/android/multiwindow/MultiSplitHandler;
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    return-object v0
.end method

.method public blacklist getDecor()Lcom/android/internal/policy/DecorView;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public blacklist getWindowYOffsetInSplit()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWindowYOffsetInSplit:I

    return v0
.end method

.method protected blacklist hidePopup()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPopup:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;->dismiss()V

    .line 388
    :cond_0
    return-void
.end method

.method public blacklist isFullScreenHandlerOverlappedWithCutout()Z
    .locals 4

    .line 251
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 255
    .local v0, "displayCenterX":I
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCutoutRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 257
    .local v2, "cutoutRect":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_0

    .line 258
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 257
    :goto_0
    return v1

    .line 260
    .end local v0    # "displayCenterX":I
    .end local v2    # "cutoutRect":Landroid/graphics/Rect;
    :cond_1
    return v1
.end method

.method synthetic blacklist lambda$loadApplicationIconThread$3$com-samsung-android-multiwindow-OverlayHandlerView()V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mContext:Landroid/content/Context;

    .line 803
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 804
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mApplicationIcon:Landroid/graphics/Bitmap;

    .line 805
    return-void
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-multiwindow-OverlayHandlerView()V
    .locals 1

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->doFadeAnimation(Z)V

    return-void
.end method

.method synthetic blacklist lambda$new$1$com-samsung-android-multiwindow-OverlayHandlerView()V
    .locals 1

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->doFadeAnimation(Z)V

    return-void
.end method

.method synthetic blacklist lambda$new$2$com-samsung-android-multiwindow-OverlayHandlerView()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCanLongPressed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsImeShowingWhenTouched:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLongPressTimeoutRunnable: call handleLongPress, ohv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayHandlerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->handleLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsLongPressed:Z

    .line 150
    :cond_1
    return-void

    .line 144
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 265
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCutoutRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 267
    .local v0, "oldCutoutRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCutoutRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCutoutRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 268
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCutoutRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->isFullScreenHandlerOverlappedWithCutout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplyWindowInsets: oldCutoutRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currCutoutRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mCutoutRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverlayHandlerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateViewLayout(Z)V

    goto :goto_0

    .line 273
    .end local v0    # "oldCutoutRect":Landroid/graphics/Rect;
    :cond_0
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 275
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateViewLayout(Z)V

    goto :goto_1

    .line 273
    :cond_1
    :goto_0
    nop

    .line 278
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 5

    .line 849
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow: ohv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setOverlayHandlerActivated(Z)V

    .line 856
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->createHandlerAffordanceAnim()V

    .line 858
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->schedulePopupAffordance()V

    goto :goto_0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerAffordanceRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 865
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showImmediately()V

    goto :goto_1

    .line 869
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setAutoHide(Z)V

    .line 872
    :cond_3
    :goto_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 876
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow: ohv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setOverlayHandlerActivated(Z)V

    .line 881
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 2

    .line 166
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPaddingView:Landroid/view/ViewGroup;

    .line 168
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mStrokeView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    .line 169
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mPaddingView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFillView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    .line 170
    return-void
.end method

.method blacklist onFreeformResizeStateChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .line 985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mResizeFadeAnim:Z

    .line 986
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHideRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mShowRunnable:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->post(Ljava/lang/Runnable;)Z

    .line 987
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 589
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerBounds:Landroid/graphics/Rect;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 591
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 174
    iget v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHandlerWidth:I

    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 175
    return-void
.end method

.method blacklist onStatusBarVisibilityChanged()V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateViewLayout(Z)V

    .line 982
    :cond_0
    return-void
.end method

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 595
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showPopup()Z

    .line 597
    const/4 v0, 0x1

    return v0

    .line 599
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method blacklist removeWindow()V
    .locals 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeWindow: on request. ohv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->hidePopup()V

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeWindow: done. ohv="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method blacklist scheduleFadeAnimation(Z)V
    .locals 4
    .param p1, "fadeIn"    # Z

    .line 893
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->unscheduleFadeAnimation()V

    .line 894
    if-eqz p1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 896
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAnchor:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 903
    :cond_2
    :goto_0
    return-void
.end method

.method blacklist setAutoHide(Z)V
    .locals 1
    .param p1, "autoHide"    # Z

    .line 886
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    if-eq v0, p1, :cond_0

    .line 887
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    .line 888
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->scheduleFadeAnimation(Z)V

    .line 890
    :cond_0
    return-void
.end method

.method protected blacklist setFitInsetsAndCutoutModeIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 1003
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1007
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 1008
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1012
    .local v0, "cutout":Landroid/view/DisplayCutout;
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1016
    :cond_1
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    .line 1013
    :cond_2
    :goto_0
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1019
    :goto_1
    return v3

    .line 1004
    .end local v0    # "cutout":Landroid/view/DisplayCutout;
    :cond_3
    :goto_2
    return v1
.end method

.method blacklist updateConfigurationChanged()V
    .locals 2

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateStashedState()V

    .line 321
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateResourcesFromDCResources()V

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateViewLayout(Z)V

    .line 324
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->DECORCAPTION_HANDLER_AUTO_HIDE:Z

    if-eqz v1, :cond_3

    .line 325
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showImmediately()V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mVisibleOnLongPress:Z

    if-eqz v1, :cond_2

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showImmediately()V

    .line 332
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->scheduleFadeAnimation(Z)V

    .line 335
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mVisibleOnLongPress:Z

    goto :goto_0

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    if-eqz v1, :cond_3

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showImmediately()V

    .line 339
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->scheduleFadeAnimation(Z)V

    .line 342
    :cond_3
    :goto_0
    return-void
.end method

.method blacklist updateFreeformStashState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 350
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mIsStashed:Z

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateResourcesFromDCResources()V

    .line 353
    return-void
.end method

.method blacklist updateWindowFocusChanged()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mFillView:Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->hasBarFocus()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->-$$Nest$mupdateColor(Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;Z)V

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->schedulePopupAffordance()V

    .line 347
    return-void
.end method

.method blacklist updateWindowInsetsChanged()V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->repositionPopup()V

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->schedulePopupAffordance()V

    .line 295
    return-void
.end method

.method blacklist updateWindowingModeChanged()V
    .locals 2

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateStashedState()V

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateResourcesFromDCResources()V

    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateViewLayout(Z)V

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->schedulePopupAffordance()V

    .line 303
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->DECORCAPTION_HANDLER_AUTO_HIDE:Z

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showImmediately()V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mVisibleOnLongPress:Z

    if-eqz v0, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->showImmediately()V

    .line 311
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mAutoHide:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->scheduleFadeAnimation(Z)V

    .line 314
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView;->mVisibleOnLongPress:Z

    .line 317
    :cond_2
    :goto_0
    return-void
.end method
