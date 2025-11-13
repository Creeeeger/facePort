.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$Host;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final blacklist ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final blacklist ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final blacklist ANIMATION_DURATION_RESIZE:I = 0x12c

.field private static final blacklist ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field private static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final blacklist ANIMATION_TYPE_HIDE:I = 0x1

.field public static final blacklist ANIMATION_TYPE_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final blacklist ANIMATION_TYPE_SHOW:I = 0x0

.field public static final blacklist ANIMATION_TYPE_USER:I = 0x2

.field static final blacklist DEBUG:Z

.field private static final blacklist ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

.field private static final blacklist ENABLE_SEP_IME_ANIMATION:Z

.field private static final blacklist FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field private static final blacklist ID_CAPTION_BAR:I

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field private static final blacklist PROP_ENABLE_SEP_IME_ANIMATION:Ljava/lang/String; = "persist.sys.ime.enable_sep_ime_animation"

.field public static final blacklist RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SEP_ANIMATION_DURATION_IME_FLAGSHIP_HIDE_MS:I = 0x12c

.field private static final blacklist SEP_ANIMATION_DURATION_IME_FLAGSHIP_SHOW_MS:I = 0x15e

.field private static final blacklist SEP_ANIMATION_DURATION_IME_HIDE_MS:I = 0x118

.field private static final blacklist SEP_ANIMATION_DURATION_IME_SHOW_MS:I = 0x118

.field private static final blacklist SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsController"

.field static final blacklist WARN:Z

.field private static blacklist sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAnimCallback:Ljava/lang/Runnable;

.field private blacklist mAnimCallbackScheduled:Z

.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearanceControlled:I

.field private blacklist mAppearanceFromResource:I

.field private blacklist mBehaviorControlled:Z

.field private blacklist mCancelledForNewAnimationTypes:I

.field private blacklist mCaptionInsetsHeight:I

.field private blacklist mCompatSysUiVisibilityStaled:Z

.field private final blacklist mConsumerCreator:Lcom/android/internal/util/function/TriFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mControllableTypes:I

.field private blacklist mExistingTypes:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHost:Landroid/view/InsetsController$Host;

.field private blacklist mImeCaptionBarInsetsHeight:I

.field private final blacklist mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

.field private final blacklist mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

.field private blacklist mIsPredictiveBackImeHideAnimInProgress:Z

.field private final blacklist mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private blacklist mLastActivityType:I

.field private final blacklist mLastDispatchedState:Landroid/view/InsetsState;

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private blacklist mLastLegacySoftInputMode:I

.field private blacklist mLastLegacySystemUiFlags:I

.field private blacklist mLastLegacyWindowFlags:I

.field private blacklist mLastStartedAnimTypes:I

.field private blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final blacklist mPendingControlTimeout:Ljava/lang/Runnable;

.field private blacklist mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final blacklist mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mReportedRequestedVisibleTypes:I

.field private blacklist mRequestedVisibleTypes:I

.field private final blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

.field private blacklist mStartingAnimation:Z

.field private final blacklist mState:Landroid/view/InsetsState;

.field private blacklist mSystemBarControlledByPolicy:Z

.field private final blacklist mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTypesBeingCancelled:I

.field private blacklist mVisibleTypes:I

.field private blacklist mWindowType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2LIr3EryRYmtQ1HDd2j7SPwxf78(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Z3PM_ZHn-VPXa80QW4ZDJbZ_6QU(Landroid/view/InsetsController;)I
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$byQpFrvTVUSIm262wbTCVu-YfPc(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m0h69hPi9k8nqDnYD5vTLkv4rsM(Landroid/view/InsetsController;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$updateState$4([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$meqKUiuVHZJFS86fhQQzBBmdABw(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$njZtqr3ZSj8qfjB8biFLGe-UC1E(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zHkX5nyqL2mGn5Rg6byt6DH0yFE(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/InsetsController;->lambda$startAnimation$8(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zM05iYQaCKzLG8Raquar1hv37XU(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->lambda$controlAnimationUncheckedInner$7(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetENABLE_SEP_FLAGSHIP_IME_ANIMATION()Z
    .locals 1

    sget-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetENABLE_SEP_IME_ANIMATION()Z
    .locals 1

    sget-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_IME_ANIMATION:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSEP_IME_HIDE_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSEP_IME_SHOW_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-string/jumbo v0, "persist.sys.ime.enable_sep_ime_animation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/InsetsController;->ENABLE_SEP_IME_ANIMATION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_STRIDE_OCR_VERSION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "V2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product.name"

    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "m44x"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Landroid/view/InsetsController;->ENABLE_SEP_FLAGSHIP_IME_ANIMATION:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v5, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    nop

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v3, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsController;->ID_CAPTION_BAR:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_INSETS_LOG_DEBUG:Z

    sput-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;)V
    .locals 2

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;Lcom/android/internal/util/function/TriFunction;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Lcom/android/internal/util/function/TriFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/InsetsController$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$1;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    iput v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/InsetsController$2;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$2;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    new-instance v0, Landroid/view/InsetsController$3;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$3;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda11;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    return-void
.end method

.method private blacklist abortPendingImeControlRequest()V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "abortPendingImeControlRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist applyLocalVisibilityOverride()V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist calculateControllableTypes()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    or-int/2addr v0, v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private blacklist cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 5

    const/16 v0, 0x28

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_0
    nop

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cancelAnimation: types=%s, animType=%d, host=%s, from=%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v4, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    if-eqz p2, :cond_1

    iget-object v2, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v0, v4, :cond_3

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v4

    if-ne v4, v2, :cond_3

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/view/InsetsController;->reportRequestedVisibleTypes()V

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1, v2}, Landroid/view/InsetsController$Host;->notifyAnimationRunningStateChanged(Z)V

    :cond_4
    invoke-virtual {p0, v0, v2}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    return-void
.end method

.method private blacklist cancelExistingControllers(I)V
    .locals 5

    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    nop

    return-void

    :catchall_0
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    throw v1
.end method

.method private blacklist collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x23

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v7, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_0
    if-ltz v7, :cond_c

    iget-object v9, v0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v10

    and-int v10, v10, p2

    if-nez v10, :cond_0

    move-object/from16 v15, p3

    goto/16 :goto_8

    :cond_0
    const/4 v10, 0x0

    if-eqz v2, :cond_2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_1

    goto :goto_1

    :cond_1
    move v11, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v8

    :goto_2
    const/4 v12, 0x1

    const-string v13, "InsetsController"

    if-eqz v11, :cond_4

    invoke-virtual {v9, v1, v3}, Landroid/view/InsetsSourceConsumer;->requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/4 v12, 0x0

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v14

    invoke-virtual {v0, v10, v14}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    goto :goto_3

    :pswitch_1
    const/4 v6, 0x0

    sget-boolean v10, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "requestShow IME_SHOW_DELAYED"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_2
    nop

    :cond_3
    :goto_3
    goto :goto_4

    :cond_4
    invoke-virtual {v9, v1, v3}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    :goto_4
    if-nez v12, :cond_6

    if-eqz v1, :cond_5

    nop

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v10

    invoke-static {v10}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    filled-new-array {v10, v14}, [Ljava/lang/Object;

    move-result-object v10

    const-string v14, "collectSourceControls can\'t continue show for type: %s fromIme: %b"

    invoke-static {v14, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, p3

    goto :goto_8

    :cond_5
    move-object/from16 v15, p3

    goto :goto_8

    :cond_6
    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    if-nez v14, :cond_8

    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v14

    sget v15, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v14, v15, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v15, p3

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v13

    new-instance v14, Landroid/view/InsetsSourceControl;

    invoke-direct {v14, v10}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    move-object/from16 v15, p3

    invoke-virtual {v15, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v13

    or-int/2addr v4, v13

    goto :goto_8

    :cond_9
    move-object/from16 v15, p3

    :goto_6
    if-eqz v1, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "collectSourceControls can\'t continue for type: ime, fromIme: true requires a control with a leash but we have "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v10, :cond_a

    const-string v14, "control: null"

    goto :goto_7

    :cond_a
    const-string v14, "control: non-null and control.getLeash(): null"

    :goto_7
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v8

    invoke-interface {v8, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_b
    :goto_8
    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v15, p3

    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist collectSourceControlsV2(ILandroid/util/SparseArray;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    sget v6, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    or-int/2addr v1, v5

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    new-instance v6, Landroid/view/InsetsSourceControl;

    invoke-direct {v6, v4}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {p2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    or-int/2addr v0, v5

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private blacklist computeAnimatingTypes()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private blacklist controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p10, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    move v0, p1

    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    invoke-direct/range {p0 .. p12}, Landroid/view/InsetsController;->controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    invoke-direct {p0}, Landroid/view/InsetsController;->reportRequestedVisibleTypes()V

    return-void
.end method

.method private blacklist controlAnimationUncheckedInner(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 30

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move/from16 v11, p9

    move-object/from16 v10, p12

    iget v0, v15, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int/2addr v0, v14

    const/16 v1, 0x21

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    if-eqz v11, :cond_1

    if-ne v11, v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v8

    :cond_1
    :goto_0
    move v0, v9

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, v14

    if-eqz v2, :cond_3

    const/16 v2, 0x28

    if-nez v11, :cond_2

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v10, v2, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v10, v2, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    :goto_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v10, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start a new insets animation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while an existing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v15, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is being cancelled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v10, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const-string v7, "IC.showRequestFromApiToImeReady"

    const-string v6, "IC.showRequestFromApi"

    const/4 v5, 0x0

    const-string v3, "InsetsController"

    const-wide/16 v1, 0x8

    if-nez v14, :cond_6

    invoke-interface {v12, v5}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "no types to animate in controlAnimationUnchecked"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v1, v2, v6, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {v1, v2, v7, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    :cond_6
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlAnimation types: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget v0, v15, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v0, v14

    iput v0, v15, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v0

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    const-string v9, "Ime not ready. Create pending request"

    move-object/from16 v17, v9

    if-eqz v0, :cond_d

    invoke-direct {v15, v14, v4}, Landroid/view/InsetsController;->collectSourceControlsV2(ILandroid/util/SparseArray;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/4 v1, 0x2

    if-ne v11, v1, :cond_b

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, v14

    if-eqz v1, :cond_9

    and-int v1, v14, v20

    if-eqz v1, :cond_9

    new-instance v21, Landroid/view/InsetsController$PendingControlRequest;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move v10, v2

    move-object/from16 v2, p3

    move-object v9, v3

    move-object/from16 v25, v4

    move-wide/from16 v3, p6

    move-object/from16 v5, p8

    move-object/from16 v26, v6

    move/from16 v6, p9

    move-object/from16 v27, v7

    move/from16 v7, v22

    move-object/from16 v8, p2

    move-object/from16 v28, v9

    move-object/from16 v11, v17

    const-wide/16 v12, 0x7d0

    move/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V

    iput-object v0, v15, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v1, v15, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, v15, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_8

    move-object/from16 v13, v28

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    move-object/from16 v13, v28

    :goto_2
    move-object/from16 v12, p2

    if-eqz v12, :cond_a

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v15, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v12, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    goto :goto_3

    :cond_9
    move-object/from16 v24, v0

    move v10, v2

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object v12, v13

    move-object v13, v3

    :cond_a
    :goto_3
    if-eq v10, v14, :cond_c

    return-void

    :cond_b
    move-object/from16 v24, v0

    move v10, v2

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object v12, v13

    move-object v13, v3

    :cond_c
    move v7, v10

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    const/4 v9, 0x0

    const-wide/16 v10, 0x8

    goto/16 :goto_4

    :cond_d
    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object v12, v13

    move-object/from16 v11, v17

    const-wide/16 v9, 0x7d0

    move-object v13, v3

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p1

    move-object/from16 v3, v25

    move/from16 v4, p9

    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsController;->collectSourceControls(ZILandroid/util/SparseArray;ILandroid/view/inputmethod/ImeTracker$Token;)Landroid/util/Pair;

    move-result-object v8

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_e

    nop

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "controlAnimationUnchecked, typesReady: %s imeReady: %s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez v17, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    new-instance v18, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v19, v8

    move-object/from16 v8, p2

    move-object/from16 v20, v11

    move-wide v10, v9

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V

    iput-object v0, v15, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v1, v15, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, v15, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_f

    move-object/from16 v1, v20

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v12, :cond_10

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v15, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v12, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_10
    invoke-static/range {v25 .. v25}, Landroid/view/InsetsController;->releaseControls(Landroid/util/SparseArray;)V

    iget v1, v15, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-virtual {v15, v1, v14}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    move-object/from16 v1, v26

    const/4 v9, 0x0

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v1, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    if-nez p5, :cond_11

    move-object/from16 v2, v27

    invoke-static {v10, v11, v2, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_11
    return-void

    :cond_12
    move-object/from16 v19, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    const/4 v9, 0x0

    const-wide/16 v10, 0x8

    move/from16 v7, v16

    :goto_4
    if-nez v7, :cond_16

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {v10, v11, v1, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    move-object/from16 v8, p3

    const/4 v6, 0x0

    invoke-interface {v8, v6}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    goto :goto_5

    :cond_13
    move-object/from16 v8, p3

    const/4 v6, 0x0

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "No types ready. onCancelled()"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-interface {v8, v6}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    invoke-static {v10, v11, v1, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    if-nez p5, :cond_15

    invoke-static {v10, v11, v2, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_15
    :goto_5
    return-void

    :cond_16
    move-object/from16 v8, p3

    const/4 v6, 0x0

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_17

    iput v7, v15, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    invoke-direct {v15, v7}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    iput v9, v15, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    goto :goto_6

    :cond_17
    invoke-direct {v15, v7}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    :goto_6
    if-eqz p11, :cond_18

    new-instance v16, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v3, v15, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v15, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v17

    iget-object v0, v15, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p0

    move/from16 v19, v7

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v11, p12

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, v17

    move-object/from16 v29, v13

    move-object/from16 v13, v18

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_7

    :cond_18
    move/from16 v19, v7

    move-object/from16 v29, v13

    new-instance v16, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v15, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v15, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v12

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v19

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V

    :goto_7
    move-object/from16 v0, v16

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    move/from16 v10, v19

    and-int/2addr v1, v10

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, v15, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "InsetsAnimationControlImpl"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    move/from16 v1, p9

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    move-object/from16 v5, p12

    invoke-virtual {v3, v5, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    goto :goto_8

    :cond_19
    move-object/from16 v5, p12

    goto :goto_8

    :cond_1a
    move/from16 v1, p9

    move-object/from16 v5, p12

    const/4 v2, 0x1

    :goto_8
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x27

    invoke-interface {v3, v5, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v3, v15, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v15, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3, v2}, Landroid/view/InsetsController$Host;->notifyAnimationRunningStateChanged(Z)V

    :cond_1b
    iget-object v3, v15, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v4, Landroid/view/InsetsController$RunningAnimation;

    invoke-direct {v4, v0, v1}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlAnimationUncheckedInner: Added types="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", animType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v29

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    if-eqz v3, :cond_1c

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v4, v15, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v3, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    goto :goto_9

    :cond_1c
    const-string v4, "IC.pendingAnim"

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    invoke-static {v6, v7, v4, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_9
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v15, v10, v2}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    move/from16 v4, p1

    goto :goto_a

    :cond_1d
    move/from16 v4, p1

    invoke-virtual {v15, v4, v2}, Landroid/view/InsetsController;->onAnimationStateChanged(IZ)V

    :goto_a
    if-eqz p5, :cond_1e

    packed-switch v1, :pswitch_data_0

    goto :goto_b

    :pswitch_0
    const-string v2, "IC.hideRequestFromIme"

    invoke-static {v6, v7, v2, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_b

    :pswitch_1
    const-string v2, "IC.showRequestFromIme"

    invoke-static {v6, v7, v2, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    nop

    :goto_b
    goto :goto_c

    :cond_1e
    if-ne v1, v2, :cond_1f

    const-string v2, "IC.hideRequestFromApi"

    invoke-static {v6, v7, v2, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_1f
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getLayoutInsetsDuringAnimationMode(IZ)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v1, p1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private blacklist handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 15

    move-object v13, p0

    iget-object v14, v13, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    const/4 v0, 0x0

    iput-object v0, v13, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, v13, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, v13, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, v14, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v14, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v14, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-wide v6, v14, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    iget-object v8, v14, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    iget v9, v14, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v10, v14, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v11, v14, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v12, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method private blacklist invokeControllableInsetsChangedListeners()I
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$5(Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_1

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "Cancellation signal abortPendingImeControlRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$6(Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_1

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "Cancellation signal abortPendingImeControlRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$controlAnimationUncheckedInner$7(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda13;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v8, Landroid/view/InsetsController$$ExternalSyntheticLambda13;

    invoke-direct {v8}, Landroid/view/InsetsController$$ExternalSyntheticLambda13;-><init>()V

    move-object v4, v0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$3()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    iget-object v1, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iget-object v4, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_0
    const-string v15, "InsetsController"

    if-ltz v4, :cond_4

    iget-object v6, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsController$RunningAnimation;

    sget-boolean v7, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running animation type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/view/InsetsController$RunningAnimation;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, v6, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    instance-of v8, v7, Landroid/view/WindowInsetsAnimationController;

    if-eqz v8, :cond_3

    iget-boolean v8, v6, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v8, :cond_2

    invoke-interface {v7}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v8, v7

    check-cast v8, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v8, v3}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    iget-object v7, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->isRound()Z

    move-result v9

    iget v10, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v11, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget-boolean v4, v0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    if-eqz v4, :cond_5

    iget v4, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    and-int/lit16 v4, v4, -0x101

    move v12, v4

    goto :goto_1

    :cond_5
    iget v4, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    move v12, v4

    :goto_1
    iget v13, v0, Landroid/view/InsetsController;->mWindowType:I

    iget v14, v0, Landroid/view/InsetsController;->mLastActivityType:I

    const/4 v4, 0x0

    move-object v6, v3

    move-object v5, v15

    move-object v15, v4

    invoke-virtual/range {v6 .. v15}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v4

    iget-object v6, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    sget-boolean v6, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowInsetsAnimation;

    nop

    invoke-virtual {v7}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Running animation on insets type: %d, progress: %f"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_3
    if-ltz v5, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0, v6}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private synthetic blacklist lambda$startAnimation$8(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_1

    iput-boolean v3, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const-string v0, "IC.pendingAnim"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    iput-boolean v3, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/ImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v0, v3}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    return-void
.end method

.method static synthetic blacklist lambda$static$0(F)F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    const v2, 0x3eaaaaab

    const v3, 0x3eaaaaab

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    return v0

    :cond_0
    sub-float v3, v1, v3

    const v4, 0x3f2aaaaa

    div-float/2addr v3, v4

    sget-object v4, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    return v0
.end method

.method static synthetic blacklist lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 6

    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateState$4([I)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method static blacklist releaseControls(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist reportRequestedVisibleTypes()V
    .locals 4

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-direct {p0}, Landroid/view/InsetsController;->computeAnimatingTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    :goto_0
    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    if-eq v0, v1, :cond_2

    iget v1, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    xor-int/2addr v1, v0

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    :cond_1
    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iput v2, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v3, p0, Landroid/view/InsetsController;->mReportedRequestedVisibleTypes:I

    invoke-interface {v2, v3}, Landroid/view/InsetsController$Host;->updateRequestedVisibleTypes(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    return-void
.end method

.method private blacklist updateState(Landroid/view/InsetsState;)V
    .locals 11

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    filled-new-array {v1}, [I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v8

    iget-object v9, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InsetsSourceConsumer;

    if-eqz v9, :cond_0

    invoke-virtual {v9, v6, v8}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    goto :goto_1

    :cond_0
    iget-object v10, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v10, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :goto_1
    or-int/2addr v0, v7

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    or-int/2addr v2, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v4

    not-int v5, v0

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    iget v4, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    const/4 v5, 0x1

    if-eq v4, v2, :cond_4

    iget v4, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    xor-int/2addr v4, v2

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    :cond_3
    iput v2, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    :cond_4
    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    if-eq v4, v0, :cond_6

    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    xor-int/2addr v4, v0

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-boolean v5, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    :cond_5
    iput v0, p0, Landroid/view/InsetsController;->mExistingTypes:I

    :cond_6
    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController;->mRemoveGoneSources:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v4, p1, v5}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    aget v1, v3, v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public blacklist applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    :cond_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsController;->applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist applyAnimation(IZZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 17

    move-object/from16 v13, p0

    const-string v0, "InsetsController"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    sget-boolean v2, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "applyAnimation, nothing to animate. Stopping here"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "IC.showRequestFromApi"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    const-string v0, "IC.showRequestFromApiToImeReady"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v14

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int v3, p1, v3

    if-eqz v3, :cond_3

    iget-object v3, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    move v15, v2

    goto :goto_0

    :cond_3
    move v15, v2

    :goto_0
    iget-object v2, v13, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_6

    iget-object v4, v13, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    and-int v5, v5, p1

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v13, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v6

    invoke-static {v6}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getSideHint()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getSideHint()I

    move-result v8

    if-eq v7, v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyAnimation, skip insets animation, because hint of source is not equal to hint of control, source="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", control="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    move/from16 v16, p4

    :goto_3
    new-instance v10, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v0, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v4

    if-nez v16, :cond_8

    iget-boolean v0, v13, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v5, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v5, v3

    :goto_5
    iget-object v0, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    const/16 v1, -0x50

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v6

    iget-object v7, v13, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-object v8, v13, Landroid/view/InsetsController;->mJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    move-object v0, v10

    move/from16 v1, p2

    move v2, v14

    move/from16 v3, p1

    move v9, v15

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;Z)V

    move-object v3, v10

    nop

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getDurationMs()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    nop

    xor-int/lit8 v9, p2, 0x1

    xor-int/lit8 v10, p2, 0x1

    xor-int/lit8 v11, v14, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v5, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method public blacklist calculateInsets(ZIIIII)Landroid/view/WindowInsets;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v12, p2

    iput v12, v0, Landroid/view/InsetsController;->mWindowType:I

    move/from16 v13, p3

    iput v13, v0, Landroid/view/InsetsController;->mLastActivityType:I

    move/from16 v14, p4

    iput v14, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    move/from16 v15, p5

    iput v15, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iput v1, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget-object v2, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-boolean v4, v0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    if-eqz v4, :cond_0

    and-int/lit16 v4, v1, -0x101

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    nop

    const/4 v4, 0x0

    const/4 v11, 0x0

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2

    iput-object v2, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    iget-object v2, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    return-object v2
.end method

.method public blacklist calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .locals 6

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist cancelExistingAnimations()V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method public blacklist computeUserAnimatingTypes()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    or-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 10

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object/from16 v3, p6

    move-wide v5, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method public blacklist controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V
    .locals 17

    move-object/from16 v13, p0

    move/from16 v14, p1

    iget-object v0, v13, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v13, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, v14

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v15, p3

    invoke-interface {v15, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    return-void

    :cond_0
    move-object/from16 v15, p3

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, v13, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_1
    iget-object v4, v13, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move/from16 v12, p9

    invoke-direct {v13, v14, v12}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(IZ)I

    move-result v10

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
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

    const-string v2, "InsetsController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsPredictiveBackImeHideAnimInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    const-wide v4, 0x20b00000002L

    invoke-interface {v3, p1, v4, v5}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist getAnimationType(I)I
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAppearanceControlled()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    return v0
.end method

.method blacklist getCancelledForNewAnimationTypes()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsController;->mCancelledForNewAnimationTypes:I

    return v0
.end method

.method public blacklist getHost()Landroid/view/InsetsController$Host;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public blacklist getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    return-object v0
.end method

.method public blacklist getLastDispatchedState()Landroid/view/InsetsState;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public blacklist getRequestedVisibleTypes()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    return v0
.end method

.method public blacklist getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->setId(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Lcom/android/internal/util/function/TriFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    :goto_0
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    iget v2, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int v2, v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public whitelist hide(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int v2, p1, v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide(ime(), fromIme="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "InsetsController"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    iget-object v4, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v4

    const/4 v5, 0x5

    const/16 v6, 0x1c

    invoke-interface {v2, v3, v5, v6, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    const-wide/16 v4, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v7

    iget-object v8, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v8}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    const-string v9, "InsetsController#hide"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v8, v10}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    const-string v7, "IC.hideRequestFromIme"

    invoke-static {v4, v5, v7, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string v7, "IC.hideRequestFromApi"

    invoke-static {v4, v5, v7, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v7, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_2
    const/4 v9, 0x1

    :goto_3
    const/16 v10, 0x200

    if-gt v9, v10, :cond_f

    and-int v10, p1, v9

    if-nez v10, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v10

    if-ne v9, v10, :cond_4

    move v10, v8

    goto :goto_4

    :cond_4
    move v10, v6

    :goto_4
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v10, :cond_5

    iget v11, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v12

    and-int/2addr v11, v12

    if-nez v11, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v0, v9}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v11

    iget v12, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v12, v9

    if-eqz v12, :cond_6

    move v12, v8

    goto :goto_5

    :cond_6
    move v12, v6

    :goto_5
    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v13, :cond_7

    if-nez v12, :cond_7

    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v14, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    not-int v15, v9

    and-int/2addr v14, v15

    iput v14, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v13, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget v13, v13, Landroid/view/InsetsController$PendingControlRequest;->types:I

    if-nez v13, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_7
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v13

    const/4 v14, -0x1

    if-nez v13, :cond_9

    if-eqz v10, :cond_9

    if-nez v12, :cond_9

    if-ne v11, v14, :cond_9

    const/4 v5, 0x1

    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Landroid/view/InsetsSourceConsumer;->requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_9
    const/16 v13, 0x20

    if-nez v12, :cond_a

    if-eq v11, v14, :cond_d

    :cond_a
    if-eq v11, v8, :cond_d

    if-ne v11, v3, :cond_b

    iget-boolean v14, v0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-eqz v14, :cond_b

    goto :goto_6

    :cond_b
    if-eqz v10, :cond_c

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v14

    invoke-interface {v14, v2, v13}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_c
    or-int/2addr v4, v9

    goto :goto_7

    :cond_d
    :goto_6
    if-eqz v10, :cond_e

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v14

    invoke-interface {v14, v2, v13}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_e
    :goto_7
    shl-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_f
    if-eqz v5, :cond_10

    iget-object v3, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v3, :cond_10

    invoke-direct {v0, v2}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    :cond_10
    invoke-virtual {v0, v4, v6, v1, v2}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist isBehaviorControlled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    return v0
.end method

.method blacklist isPredictiveBackImeHideAnimInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    return v0
.end method

.method blacklist notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 4

    nop

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->isCancelRequested()Z

    move-result v0

    const-string v1, "InsetsController"

    if-eqz v0, :cond_0

    const-string v0, "Ignore notifyFinished, because the animation has already been cancelled."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFinished. shown: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/view/inputmethod/ImeTracker;->onUserFinished(Landroid/view/inputmethod/ImeTracker$Token;Z)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x29

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    :goto_1
    invoke-direct {p0}, Landroid/view/InsetsController;->reportRequestedVisibleTypes()V

    return-void
.end method

.method blacklist notifyVisibilityChanged()V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    return-void
.end method

.method blacklist onAnimationStateChanged(IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_2
    return-void
.end method

.method public blacklist onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2, p1}, Landroid/view/InsetsController$Host;->applyInsetsHintSandboxingIfNeeded([Landroid/view/InsetsSourceControl;)V

    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    nop

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->isControlledByPolicy()Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v1, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    goto :goto_1

    :cond_0
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v4, v1, [I

    new-array v5, v1, [I

    iget-object v6, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_2
    if-ltz v6, :cond_5

    iget-object v7, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v8

    sget v9, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v8, v9, :cond_3

    goto :goto_3

    :cond_3
    iget-object v8, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InsetsSourceControl;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v9

    or-int/2addr v2, v9

    add-int/lit8 v3, v3, 0x1

    :cond_4
    invoke-virtual {v7, v8, v4, v5}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eq v3, v6, :cond_6

    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_4
    if-ltz v6, :cond_6

    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceControl;

    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_6
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_5
    if-ltz v6, :cond_7

    iget-object v7, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsController$RunningAnimation;

    iget-object v7, v7, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v8, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v7, v8}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_7
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v6

    aget v7, v4, v0

    not-int v8, v6

    and-int/2addr v7, v8

    aput v7, v4, v0

    aget v7, v5, v0

    not-int v8, v6

    and-int/2addr v7, v8

    aput v7, v5, v0

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-direct {p0, v8}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_8

    :cond_8
    aget v7, v4, v0

    if-eqz v7, :cond_9

    aget v7, v4, v0

    invoke-virtual {p0, v7, v1, v0, v8}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_9
    aget v7, v5, v0

    if-eqz v7, :cond_e

    aget v7, v5, v0

    invoke-virtual {p0, v7, v0, v0, v8}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_8

    :cond_a
    aget v7, v4, v0

    const/16 v9, 0x2e

    const/4 v10, 0x5

    if-eqz v7, :cond_c

    aget v7, v4, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v11

    and-int/2addr v7, v11

    if-nez v7, :cond_b

    move-object v7, v8

    goto :goto_6

    :cond_b
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v7

    iget-object v11, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v11}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v11

    invoke-interface {v7, v1, v10, v9, v11}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v7

    :goto_6
    aget v11, v4, v0

    invoke-virtual {p0, v11, v1, v0, v7}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_c
    aget v7, v5, v0

    if-eqz v7, :cond_e

    aget v7, v5, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v11

    and-int/2addr v7, v11

    if-nez v7, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v7

    iget-object v8, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v8}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v8

    const/4 v11, 0x2

    invoke-interface {v7, v11, v10, v9, v8}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v8

    :goto_7
    move-object v7, v8

    aget v8, v5, v0

    invoke-virtual {p0, v8, v0, v0, v7}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_e
    :goto_8
    iget v0, p0, Landroid/view/InsetsController;->mControllableTypes:I

    if-eq v0, v2, :cond_10

    iget v0, p0, Landroid/view/InsetsController;->mControllableTypes:I

    xor-int/2addr v0, v2

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->hasCompatSystemBars(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    :cond_f
    iput v2, p0, Landroid/view/InsetsController;->mControllableTypes:I

    :cond_10
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    :cond_11
    invoke-direct {p0}, Landroid/view/InsetsController;->reportRequestedVisibleTypes()V

    return-void
.end method

.method public blacklist onFrameChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->setImeCaptionBarInsetsHeight(I)V

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onStateChanged(Landroid/view/InsetsState;)Z
    .locals 6

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-nez v0, :cond_0

    iget-object v3, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v3, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChanged: host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InsetsController"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v3, v5, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    invoke-virtual {p0}, Landroid/view/InsetsController;->updateCompatSysUiVisibility()V

    iget-object v5, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v5, v3, v1, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "onStateChanged, notifyInsetsChanged"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mStartResizingAnimationIfNeeded:Landroid/view/InsetsState$OnTraverseCallbacks;

    invoke-static {v1, p1, v4}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    :cond_2
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    return v2
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    return-void
.end method

.method public blacklist setImeCaptionBarInsetsHeight(I)V
    .locals 12

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    if-ne v2, p1, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iput p1, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    iget v2, p0, Landroid/view/InsetsController;->mImeCaptionBarInsetsHeight:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    sget v2, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/view/InsetsController;->getSourceConsumer(II)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    new-instance v11, Landroid/view/InsetsSourceControl;

    sget v5, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v6

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    sget-object v10, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V

    new-array v4, v3, [I

    new-array v3, v3, [I

    invoke-virtual {v2, v11, v4, v3}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->removeSource(I)V

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    sget v4, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    if-eqz v2, :cond_2

    new-array v4, v3, [I

    new-array v3, v3, [I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4, v3}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    :cond_3
    return-void
.end method

.method public blacklist setPredictiveBackImeHideAnimInProgress(Z)V
    .locals 5

    iput-boolean p1, p0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v2, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Landroid/view/InsetsAnimationControlRunner;->updateLayoutInsetsDuringAnimation(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setRequestedVisibleTypes(II)V
    .locals 3

    iget v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedVisibleTypes: visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int v2, v0, p2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InsetsController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .locals 1

    iget v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public blacklist setSystemBarsAppearanceFromResource(II)V
    .locals 2

    iget v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsController;->mAppearanceFromResource:I

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mAppearanceControlled:I

    not-int v1, v1

    and-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mBehaviorControlled:Z

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    return-void
.end method

.method public blacklist setSystemDrivenInsetsAnimationLoggingListener(Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsController;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    return-void
.end method

.method public whitelist show(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist show(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int v2, p1, v2

    const-string v3, "InsetsController"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show(ime(), fromIme="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    iget-object v5, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v5}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v5

    const/4 v6, 0x5

    const/16 v7, 0x1a

    invoke-interface {v2, v4, v6, v7, v5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    const-string v5, "IC.showRequestFromApiToImeReady"

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v9

    iget-object v10, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v10}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    const-string v11, "InsetsController#show"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v10, v12}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    invoke-static {v6, v7, v5, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string v5, "IC.showRequestFromIme"

    invoke-static {v6, v7, v5, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string v9, "IC.showRequestFromApi"

    invoke-static {v6, v7, v9, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-static {v6, v7, v5, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    iget-object v5, v0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int v3, p1, v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    :cond_2
    invoke-direct {v0, v2}, Landroid/view/InsetsController;->handlePendingControlRequest(Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_3
    const/4 v5, 0x0

    iget-object v6, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v7, v0, Landroid/view/InsetsController;->mImeSourceConsumer:Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getId()I

    move-result v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v6

    const/4 v7, 0x1

    :goto_2
    const/16 v9, 0x200

    if-gt v7, v9, :cond_10

    and-int v9, p1, v7

    if-nez v9, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v0, v7}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v9

    iget v10, v0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    and-int/2addr v10, v7

    if-eqz v10, :cond_5

    move v10, v4

    goto :goto_3

    :cond_5
    move v10, v8

    :goto_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v11

    if-ne v7, v11, :cond_6

    move v11, v4

    goto :goto_4

    :cond_6
    move v11, v8

    :goto_4
    if-eqz v10, :cond_8

    if-eqz v11, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    const/4 v12, -0x1

    if-ne v9, v12, :cond_8

    move v12, v4

    goto :goto_5

    :cond_8
    move v12, v8

    :goto_5
    if-nez v9, :cond_9

    move v13, v4

    goto :goto_6

    :cond_9
    move v13, v8

    :goto_6
    const/16 v14, 0x20

    if-nez v12, :cond_d

    if-eqz v13, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v15

    if-nez v15, :cond_b

    if-eqz v1, :cond_b

    const/4 v15, 0x2

    if-ne v9, v15, :cond_b

    iget-boolean v15, v0, Landroid/view/InsetsController;->mIsPredictiveBackImeHideAnimInProgress:Z

    if-nez v15, :cond_b

    if-eqz v11, :cond_f

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v15

    invoke-interface {v15, v2, v14}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_8

    :cond_b
    if-eqz v11, :cond_c

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v15

    invoke-interface {v15, v2, v14}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_c
    or-int/2addr v5, v7

    goto :goto_8

    :cond_d
    :goto_7
    sget-boolean v15, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v15, :cond_e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v15, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v8, "show ignored for type: %d animType: %d requestedVisible: %s"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v11, :cond_f

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v2, v14}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_f
    :goto_8
    shl-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_10
    sget-boolean v4, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show typesReady: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-nez v3, :cond_12

    if-eqz v1, :cond_13

    :cond_12
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_13

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    :cond_13
    const/4 v3, 0x1

    invoke-virtual {v0, v5, v3, v1, v2}, Landroid/view/InsetsController;->applyAnimation(IZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v8, Landroid/view/InsetsController$$ExternalSyntheticLambda12;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda12;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v8}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist updateCompatSysUiVisibility()V
    .locals 5

    iget-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mCompatSysUiVisibilityStaled:Z

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget v1, p0, Landroid/view/InsetsController;->mVisibleTypes:I

    iget v2, p0, Landroid/view/InsetsController;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/view/InsetsController;->mControllableTypes:I

    iget v4, p0, Landroid/view/InsetsController;->mExistingTypes:I

    not-int v4, v4

    or-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(III)V

    :cond_0
    return-void
.end method
