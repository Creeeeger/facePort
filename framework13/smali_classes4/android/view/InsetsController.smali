.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;,
        Landroid/view/InsetsController$Host;
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

.field private static final blacklist ENABLE_SEP_IME_ANIMATION:Z = false

.field private static final blacklist FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field public static final blacklist RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SEP_ANIMATION_DURATION_IME_HIDE_MS:I = 0x12c

.field private static final blacklist SEP_ANIMATION_DURATION_IME_SHOW_MS:I = 0x15e

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

.field private blacklist mCaptionInsetsHeight:I

.field private final blacklist mConsumerCreator:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
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

.field private blacklist mDisabledUserAnimationInsetsTypes:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHost:Landroid/view/InsetsController$Host;

.field private final blacklist mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

.field private final blacklist mLastDispatchedState:Landroid/view/InsetsState;

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private blacklist mLastLegacySoftInputMode:I

.field private blacklist mLastLegacySystemUiFlags:I

.field private blacklist mLastLegacyWindowFlags:I

.field private blacklist mLastStartedAnimTypes:I

.field private blacklist mLastWindowingMode:I

.field private final blacklist mPendingControlTimeout:Ljava/lang/Runnable;

.field private blacklist mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final blacklist mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private final blacklist mRequestedVisibilityChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

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

.field private blacklist mWindowType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$PRU-rByC-T6Cyol8QANPZ-P3LX8(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ePJ4opFbfn8Q38r5Oo7RWmAEQ48(Landroid/view/InsetsController;)I
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result p0

    return p0
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

    .line 231
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 233
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 235
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 247
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 249
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 258
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SEP_IME_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 260
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SEP_IME_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 265
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 270
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_WINDOW_INSETS:Z

    sput-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    .line 271
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_WINDOW_INSETS:Z

    sput-boolean v0, Landroid/view/InsetsController;->WARN:Z

    .line 333
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;)V
    .locals 2
    .param p1, "host"    # Landroid/view/InsetsController$Host;

    .line 635
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>()V

    .line 642
    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 635
    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V

    .line 643
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V
    .locals 1
    .param p1, "host"    # Landroid/view/InsetsController$Host;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 648
    .local p2, "consumerCreator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Landroid/view/InsetsController;Ljava/lang/Integer;Landroid/view/InsetsSourceConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 589
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    .line 592
    new-instance v0, Landroid/view/InsetsVisibilities;

    invoke-direct {v0}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 594
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 596
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    .line 600
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    .line 602
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 621
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 631
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    .line 649
    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 650
    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    .line 651
    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    .line 652
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    .line 703
    return-void
.end method

.method private blacklist abortPendingImeControlRequest()V
    .locals 2

    .line 1358
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1360
    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1361
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1362
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "abortPendingImeControlRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    return-void
.end method

.method private blacklist applyLocalVisibilityOverride()V
    .locals 2

    .line 1455
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1456
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1457
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 1455
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1459
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist calculateControllableTypes()I
    .locals 5

    .line 1743
    const/4 v0, 0x0

    .line 1744
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1745
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1746
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 1747
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1748
    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v0, v4

    .line 1744
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1751
    .end local v1    # "i":I
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
    .locals 9
    .param p1, "control"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "invokeCallback"    # Z

    .line 1419
    nop

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1421
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1420
    const-string v3, "cancelAnimation of types: %d, animType: %d, host: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", from:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1423
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1420
    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    if-eqz p2, :cond_0

    .line 1427
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    .line 1429
    :cond_0
    const/4 v0, 0x0

    .line 1430
    .local v0, "stateChanged":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1431
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    .line 1432
    .local v2, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v3, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v3, p1, :cond_3

    .line 1433
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1434
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 1435
    .local v3, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_2

    .line 1436
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x13

    if-ne v4, v6, :cond_1

    .line 1437
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    iget-object v6, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1439
    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 1437
    const-string v8, "InsetsSourceConsumer#notifyAnimationFinished"

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1441
    :cond_1
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->notifyAnimationFinished()Z

    move-result v4

    or-int/2addr v0, v4

    .line 1435
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1443
    .end local v5    # "j":I
    :cond_2
    if-eqz p2, :cond_4

    .line 1444
    iget-object v4, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v4}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_2

    .line 1430
    .end local v2    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v3    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1449
    .end local v1    # "i":I
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1450
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1452
    :cond_5
    return-void
.end method

.method private blacklist cancelExistingControllers(I)V
    .locals 5
    .param p1, "types"    # I

    .line 1340
    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1341
    .local v0, "originalmTypesBeingCancelled":I
    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1343
    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1344
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1345
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 1346
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1343
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1349
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 1350
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    :cond_2
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1354
    nop

    .line 1355
    return-void

    .line 1353
    :catchall_0
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1354
    throw v1
.end method

.method private blacklist captionInsetsUnchanged()Z
    .locals 4

    .line 818
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 819
    return v1

    .line 821
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-nez v0, :cond_1

    .line 823
    return v1

    .line 825
    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 827
    invoke-virtual {v3, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 828
    return v1

    .line 831
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;
    .locals 16
    .param p1, "fromIme"    # Z
    .param p4, "animationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1245
    .local p2, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local p3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 1246
    .local v3, "typesReady":I
    const/4 v4, 0x1

    .line 1247
    .local v4, "imeReady":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_e

    .line 1248
    move-object/from16 v7, p2

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    .line 1249
    .local v8, "consumer":Landroid/view/InsetsSourceConsumer;
    const/4 v10, 0x2

    if-eqz v2, :cond_1

    if-ne v2, v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v6

    .line 1251
    .local v11, "show":Z
    :goto_2
    const/4 v12, 0x0

    .line 1252
    .local v12, "canRun":Z
    const/4 v13, 0x0

    const-string v14, "InsetsController"

    if-eqz v11, :cond_4

    .line 1254
    if-eqz v1, :cond_2

    .line 1255
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v15

    iget-object v6, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1256
    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 1255
    const-string v9, "ImeInsetsSourceConsumer#requestShow"

    invoke-virtual {v15, v9, v6, v13}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1259
    :cond_2
    invoke-virtual {v8, v1}, Landroid/view/InsetsSourceConsumer;->requestShow(Z)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 1268
    :pswitch_0
    sget-boolean v6, Landroid/view/InsetsController;->WARN:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestShow IME_SHOW_FAILED. fromIme: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1264
    :pswitch_1
    const/4 v4, 0x0

    .line 1265
    sget-boolean v6, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "requestShow IME_SHOW_DELAYED"

    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1261
    :pswitch_2
    const/4 v12, 0x1

    .line 1262
    nop

    .line 1272
    :cond_3
    :goto_3
    goto :goto_4

    .line 1278
    :cond_4
    if-nez v1, :cond_5

    .line 1279
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->notifyHidden()V

    .line 1281
    :cond_5
    const/4 v12, 0x1

    .line 1283
    :goto_4
    if-nez v12, :cond_7

    .line 1284
    sget-boolean v6, Landroid/view/InsetsController;->WARN:Z

    if-eqz v6, :cond_6

    new-array v6, v10, [Ljava/lang/Object;

    .line 1286
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v9

    invoke-static {v9}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v6, v10

    .line 1284
    const-string v9, "collectSourceControls can\'t continue show for type: %s fromIme: %b"

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v15, p3

    goto :goto_5

    .line 1289
    :cond_7
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v6

    .line 1290
    .local v6, "control":Landroid/view/InsetsSourceControl;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 1291
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v9

    new-instance v10, Landroid/view/InsetsSourceControl;

    invoke-direct {v10, v6}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    move-object/from16 v15, p3

    invoke-virtual {v15, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1292
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v9

    invoke-static {v9}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v9

    or-int/2addr v3, v9

    goto :goto_5

    .line 1290
    :cond_8
    move-object/from16 v15, p3

    .line 1293
    if-nez v2, :cond_b

    .line 1294
    sget-boolean v9, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "collectSourceControls no control for show(). fromIme: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_9
    if-eqz v1, :cond_a

    .line 1299
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v9

    iget-object v10, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1300
    invoke-interface {v10}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 1299
    const-string v14, "InsetsSourceConsumer#show"

    invoke-virtual {v9, v14, v10, v13}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1303
    :cond_a
    invoke-virtual {v8, v1}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    goto :goto_5

    .line 1304
    :cond_b
    const/4 v9, 0x1

    if-ne v2, v9, :cond_d

    .line 1305
    if-eqz v1, :cond_c

    .line 1306
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v10

    iget-object v14, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1307
    invoke-interface {v14}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 1306
    const-string v9, "InsetsSourceConsumer#hide"

    invoke-virtual {v10, v9, v14, v13}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1310
    :cond_c
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->hide()V

    .line 1247
    .end local v6    # "control":Landroid/view/InsetsSourceControl;
    .end local v8    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v11    # "show":Z
    .end local v12    # "canRun":Z
    :cond_d
    :goto_5
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v7, p2

    move-object/from16 v15, p3

    .line 1313
    .end local v5    # "i":I
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V
    .locals 26
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "durationMs"    # J
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "animationType"    # I
    .param p10, "layoutInsetsDuringAnimation"    # I
    .param p11, "useInsetsAnimationThread"    # Z

    .line 1132
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    move/from16 v12, p5

    move/from16 v11, p9

    move/from16 v10, p11

    iget v0, v14, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int v0, p1, v0

    if-nez v0, :cond_11

    .line 1138
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v9, "InsetsController"

    if-ne v11, v1, :cond_2

    .line 1139
    iget v2, v14, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    and-int v2, p1, v2

    .line 1140
    .local v2, "disabledTypes":I
    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user animation disabled types: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    iget v3, v14, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    not-int v3, v3

    and-int v3, p1, v3

    .line 1143
    .end local p1    # "types":I
    .local v3, "types":I
    if-eqz v12, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    iget-object v4, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 1144
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1147
    invoke-virtual {v14, v5}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4, v0, v11}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    .line 1150
    .end local v2    # "disabledTypes":I
    :cond_1
    move v8, v3

    goto :goto_0

    .line 1138
    .end local v3    # "types":I
    .restart local p1    # "types":I
    :cond_2
    move/from16 v8, p1

    .line 1150
    .end local p1    # "types":I
    .local v8, "types":I
    :goto_0
    const/4 v7, 0x0

    if-nez v8, :cond_4

    .line 1152
    invoke-interface {v13, v7}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1153
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1154
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "no types to animate in controlAnimationUnchecked"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_3
    return-void

    .line 1157
    :cond_4
    invoke-direct {v14, v8}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1158
    sget-boolean v16, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v16, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlAnimation types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_5
    iget v2, v14, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v2, v8

    iput v2, v14, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1161
    invoke-static {v8}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v6

    .line 1162
    .local v6, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v5, v2

    .line 1164
    .local v5, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-direct {v14, v12, v6, v5, v11}, Landroid/view/InsetsController;->collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;

    move-result-object v3

    .line 1166
    .local v3, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1167
    .local v4, "typesReady":I
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1168
    .local v17, "imeReady":Z
    const/4 v2, 0x0

    if-eqz v16, :cond_6

    new-array v1, v1, [Ljava/lang/Object;

    .line 1169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v1, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v1, v0

    .line 1168
    const-string v0, "controlAnimationUnchecked, typesReady: %s imeReady: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_6
    const-wide/16 v0, 0x8

    if-nez v17, :cond_9

    .line 1172
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1173
    new-instance v18, Landroid/view/InsetsController$PendingControlRequest;

    move-wide v11, v0

    move-object/from16 v0, v18

    move v1, v8

    move v7, v2

    move-object/from16 v2, p3

    move-object/from16 v19, v3

    move/from16 v20, v4

    .end local v3    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v4    # "typesReady":I
    .local v19, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v20, "typesReady":I
    move-wide/from16 v3, p6

    move-object/from16 v21, v5

    .end local v5    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v21, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v5, p8

    move-object/from16 v22, v6

    .end local v6    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v22, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move/from16 v6, p9

    move v10, v7

    move/from16 v7, p10

    move/from16 v23, v8

    .end local v8    # "types":I
    .local v23, "types":I
    move-object/from16 v8, p2

    move-object v10, v9

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V

    .line 1177
    .local v0, "request":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v0, v14, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1178
    iget-object v1, v14, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, v14, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1179
    if-eqz v16, :cond_7

    const-string v1, "Ime not ready. Create pending request"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_7
    if-eqz v15, :cond_8

    .line 1181
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v14, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v15, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1189
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1190
    const-string v1, "IC.showRequestFromApi"

    const/4 v2, 0x0

    invoke-static {v11, v12, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1191
    return-void

    .line 1194
    .end local v0    # "request":Landroid/view/InsetsController$PendingControlRequest;
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v20    # "typesReady":I
    .end local v21    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v22    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v23    # "types":I
    .restart local v3    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v4    # "typesReady":I
    .restart local v5    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v6    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v8    # "types":I
    :cond_9
    move-wide v11, v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v8

    move-object v10, v9

    .end local v3    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v4    # "typesReady":I
    .end local v5    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v6    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v8    # "types":I
    .restart local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v20    # "typesReady":I
    .restart local v21    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v22    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v23    # "types":I
    move/from16 v9, v20

    .end local v20    # "typesReady":I
    .local v9, "typesReady":I
    if-nez v9, :cond_b

    .line 1195
    if-eqz v16, :cond_a

    const-string v0, "No types ready. onCancelled()"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_a
    invoke-interface {v13, v7}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1197
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1198
    return-void

    .line 1202
    :cond_b
    move v8, v2

    if-eqz p11, :cond_c

    .line 1203
    new-instance v18, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v3, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1205
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v20

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1206
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move v5, v9

    move-object/from16 v6, p0

    move-object v15, v7

    move-wide/from16 v7, p6

    move/from16 p1, v9

    .end local v9    # "typesReady":I
    .local p1, "typesReady":I
    move-object/from16 v9, p8

    move-object/from16 v25, v10

    move/from16 v10, p9

    move/from16 v12, p9

    move/from16 v11, p10

    move-object/from16 v12, v20

    move-object/from16 v13, v24

    invoke-direct/range {v0 .. v13}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;)V

    goto :goto_1

    .line 1207
    .end local p1    # "typesReady":I
    .restart local v9    # "typesReady":I
    :cond_c
    move-object v15, v7

    move/from16 p1, v9

    move-object/from16 v25, v10

    .end local v9    # "typesReady":I
    .restart local p1    # "typesReady":I
    new-instance v18, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1209
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v12

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;)V

    :goto_1
    move-object/from16 v0, v18

    .line 1210
    .local v0, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    move/from16 v2, p1

    .end local p1    # "typesReady":I
    .local v2, "typesReady":I
    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 1211
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v3, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1212
    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1211
    const-string v4, "InsetsAnimationControlImpl"

    invoke-virtual {v1, v4, v3, v15}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1214
    :cond_d
    iget-object v1, v14, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v3, Landroid/view/InsetsController$RunningAnimation;

    move/from16 v4, p9

    invoke-direct {v3, v0, v4}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlAnimationUnchecked: Added types="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " animType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " host="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1218
    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    .line 1219
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1217
    move-object/from16 v3, v25

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    if-eqz v16, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Animation added to runner. useInsetsAnimationThread: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, p11

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    move/from16 v5, p11

    .line 1224
    :goto_2
    move-object/from16 v1, p2

    if-eqz v1, :cond_f

    .line 1225
    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v3, v14, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v1, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const/4 v8, 0x0

    goto :goto_3

    .line 1229
    :cond_f
    const-string v3, "IC.pendingAnim"

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    invoke-static {v6, v7, v3, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1231
    :goto_3
    if-nez p10, :cond_10

    .line 1232
    move/from16 v3, p5

    move/from16 v6, v23

    .end local v23    # "types":I
    .local v6, "types":I
    invoke-direct {v14, v6, v3}, Landroid/view/InsetsController;->showDirectly(IZ)V

    goto :goto_4

    .line 1234
    .end local v6    # "types":I
    .restart local v23    # "types":I
    :cond_10
    move/from16 v3, p5

    move/from16 v6, v23

    .end local v23    # "types":I
    .restart local v6    # "types":I
    invoke-direct {v14, v6, v8, v4, v3}, Landroid/view/InsetsController;->hideDirectly(IZIZ)V

    .line 1236
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1237
    return-void

    .line 1133
    .end local v0    # "runner":Landroid/view/InsetsAnimationControlRunner;
    .end local v2    # "typesReady":I
    .end local v6    # "types":I
    .end local v17    # "imeReady":Z
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v21    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v22    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local p1, "types":I
    :cond_11
    move v5, v10

    move v4, v11

    move v3, v12

    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start a new insets animation of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1134
    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " while an existing "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v14, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1135
    invoke-static {v6}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " is being cancelled."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V
    .locals 14
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "fromIme"    # Z
    .param p5, "durationMs"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "animationType"    # I

    .line 1110
    move-object v12, p0

    iget-object v0, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1111
    move-object/from16 v13, p3

    invoke-interface {v13, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1112
    return-void

    .line 1114
    :cond_0
    move-object/from16 v13, p3

    if-eqz p4, :cond_1

    .line 1115
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1117
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1115
    const-string v3, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1120
    :cond_1
    iget-object v4, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 1121
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(I)I

    move-result v10

    const/4 v11, 0x0

    .line 1120
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 1123
    return-void
.end method

.method private blacklist getLayoutInsetsDuringAnimationMode(I)I
    .locals 5
    .param p1, "types"    # I

    .line 1319
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1327
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1328
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1329
    .local v3, "consumer":Landroid/view/InsetsSourceConsumer;
    if-nez v3, :cond_0

    .line 1330
    goto :goto_1

    .line 1332
    :cond_0
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1333
    const/4 v2, 0x0

    return v2

    .line 1327
    .end local v3    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1336
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method private blacklist hideDirectly(IZIZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "animationFinished"    # Z
    .param p3, "animationType"    # I
    .param p4, "fromIme"    # Z

    .line 1587
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1588
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1589
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1588
    const-string v3, "InsetsController#hideDirectly"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1591
    :cond_0
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1592
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1593
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    .line 1592
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1595
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1597
    if-eqz p4, :cond_2

    .line 1598
    const-wide/16 v1, 0x8

    const/4 v3, 0x0

    const-string v4, "IC.hideRequestFromIme"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1600
    :cond_2
    return-void
.end method

.method private blacklist invokeControllableInsetsChangedListeners()I
    .locals 4

    .line 1758
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1759
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1760
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    .line 1761
    .local v0, "types":I
    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1762
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1763
    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 1762
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1765
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method static synthetic blacklist lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .locals 4
    .param p0, "controller"    # Landroid/view/InsetsController;
    .param p1, "type"    # Ljava/lang/Integer;

    .line 636
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 637
    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0

    .line 639
    :cond_0
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(F)F
    .locals 5
    .param p0, "alphaFraction"    # F

    .line 238
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    .line 239
    .local v1, "fraction":F
    const v2, 0x3eaaaaab

    .line 240
    .local v2, "fractionDelay":F
    const v3, 0x3eaaaaab

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    .line 241
    return v0

    .line 243
    :cond_0
    sub-float v3, v1, v3

    const v4, 0x3f2aaaaa

    div-float/2addr v3, v4

    .line 244
    .local v3, "innerFraction":F
    sget-object v4, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    return v0
.end method

.method static synthetic blacklist lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 6
    .param p0, "fraction"    # F
    .param p1, "startValue"    # Landroid/graphics/Insets;
    .param p2, "endValue"    # Landroid/graphics/Insets;

    .line 333
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

.method private blacklist showDirectly(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 1603
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1604
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1605
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1604
    const-string v3, "InsetsController#showDirectly"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1607
    :cond_0
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1608
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 1609
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    .line 1608
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1611
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1613
    if-eqz p2, :cond_2

    .line 1614
    const-wide/16 v3, 0x8

    const-string v1, "IC.showRequestFromIme"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1616
    :cond_2
    return-void
.end method

.method private blacklist startResizingAnimationIfNeeded(Landroid/view/InsetsState;)V
    .locals 13
    .param p1, "fromState"    # Landroid/view/InsetsState;

    .line 835
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    return-void

    .line 838
    :cond_0
    const/4 v0, 0x0

    .line 839
    .local v0, "types":I
    const/4 v1, 0x0

    .line 840
    .local v1, "toState":Landroid/view/InsetsState;
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {v2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 841
    .local v2, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 842
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 844
    .local v4, "type":I
    const/16 v5, 0x15

    if-ne v4, v5, :cond_1

    .line 846
    goto :goto_1

    .line 849
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 850
    .local v5, "fromSource":Landroid/view/InsetsSource;
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 851
    .local v6, "toSource":Landroid/view/InsetsSource;
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 852
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 853
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 854
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 855
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 856
    :cond_2
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    .line 857
    if-nez v1, :cond_3

    .line 858
    new-instance v7, Landroid/view/InsetsState;

    invoke-direct {v7}, Landroid/view/InsetsState;-><init>()V

    move-object v1, v7

    .line 860
    :cond_3
    new-instance v7, Landroid/view/InsetsSource;

    invoke-direct {v7, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v1, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 841
    .end local v4    # "type":I
    .end local v5    # "fromSource":Landroid/view/InsetsSource;
    .end local v6    # "toSource":Landroid/view/InsetsSource;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 863
    .end local v3    # "i":I
    :cond_5
    if-nez v0, :cond_6

    .line 864
    return-void

    .line 866
    :cond_6
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 867
    new-instance v3, Landroid/view/InsetsResizeAnimationRunner;

    iget-object v5, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    sget-object v8, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0x12c

    move-object v4, v3

    move-object v6, p1

    move-object v7, v1

    move v11, v0

    move-object v12, p0

    invoke-direct/range {v4 .. v12}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V

    .line 870
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v5, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startResizingAnimationIfNeeded: types="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 874
    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 873
    const-string v5, "InsetsController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method private blacklist updateDisabledUserAnimationTypes(I)V
    .locals 5
    .param p1, "disabledUserAnimationTypes"    # I

    .line 802
    iget v0, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    xor-int/2addr v0, p1

    .line 803
    .local v0, "diff":I
    if-eqz v0, :cond_2

    .line 804
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 805
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 806
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 807
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 808
    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 809
    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    goto :goto_1

    .line 804
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 813
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iput p1, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    .line 815
    :cond_2
    return-void
.end method

.method private blacklist updateRequestedVisibilities()V
    .locals 6

    .line 1519
    const/4 v0, 0x0

    .line 1520
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1521
    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1522
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    .line 1523
    .local v3, "type":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1524
    goto :goto_1

    .line 1526
    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    .line 1527
    .local v4, "requestedVisible":Z
    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v5, v3}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v5

    if-eq v5, v4, :cond_1

    .line 1528
    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v5, v3, v4}, Landroid/view/InsetsVisibilities;->setVisibility(IZ)V

    .line 1529
    const/4 v0, 0x1

    .line 1520
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "type":I
    .end local v4    # "requestedVisible":Z
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1532
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1533
    if-nez v0, :cond_3

    .line 1534
    return-void

    .line 1536
    :cond_3
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-interface {v1, v2}, Landroid/view/InsetsController$Host;->updateRequestedVisibilities(Landroid/view/InsetsVisibilities;)V

    .line 1537
    return-void
.end method

.method private blacklist updateState(Landroid/view/InsetsState;)V
    .locals 8
    .param p1, "newState"    # Landroid/view/InsetsState;

    .line 765
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "disabledUserAnimationTypes":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v1

    .line 768
    .local v2, "cancelledUserAnimationTypes":[I
    const/4 v3, 0x0

    .local v3, "type":I
    :goto_0
    const/4 v4, 0x2

    const/16 v5, 0x18

    if-ge v3, v5, :cond_2

    .line 769
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 770
    .local v5, "source":Landroid/view/InsetsSource;
    if-nez v5, :cond_0

    goto :goto_1

    .line 771
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    .line 772
    .local v6, "animationType":I
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 773
    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    .line 775
    .local v7, "insetsType":I
    or-int/2addr v0, v7

    .line 776
    if-ne v6, v4, :cond_1

    .line 778
    const/4 v6, -0x1

    .line 779
    aget v4, v2, v1

    or-int/2addr v4, v7

    aput v4, v2, v1

    .line 782
    .end local v7    # "insetsType":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    .line 768
    .end local v5    # "source":Landroid/view/InsetsSource;
    .end local v6    # "animationType":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 784
    .end local v3    # "type":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "type":I
    :goto_2
    if-ge v3, v5, :cond_6

    .line 786
    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 787
    :cond_3
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 788
    .local v6, "source":Landroid/view/InsetsSource;
    if-nez v6, :cond_4

    goto :goto_3

    .line 789
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    if-nez v7, :cond_5

    .line 790
    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v7, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 784
    .end local v6    # "source":Landroid/view/InsetsSource;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 794
    .end local v3    # "type":I
    :cond_6
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->updateDisabledUserAnimationTypes(I)V

    .line 796
    aget v1, v2, v1

    if-eqz v1, :cond_7

    .line 797
    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 1771
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 1774
    return-void
.end method

.method public blacklist applyAnimation(IZZ)V
    .locals 4
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z

    .line 1546
    const/4 v0, 0x0

    .line 1547
    .local v0, "skipAnim":Z
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 1548
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1549
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1552
    .local v2, "imeControl":Landroid/view/InsetsSourceControl;
    :goto_0
    if-eqz v2, :cond_2

    .line 1553
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1554
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 1557
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v2    # "imeControl":Landroid/view/InsetsSourceControl;
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/InsetsController;->applyAnimation(IZZZ)V

    .line 1558
    return-void
.end method

.method public blacklist applyAnimation(IZZZ)V
    .locals 14
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "skipAnim"    # Z

    .line 1563
    move-object v12, p0

    if-nez p1, :cond_1

    .line 1565
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "applyAnimation, nothing to animate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_0
    return-void

    .line 1569
    :cond_1
    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v13

    .line 1570
    .local v13, "hasAnimationCallbacks":Z
    new-instance v7, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1571
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v4

    if-nez p4, :cond_3

    iget-boolean v0, v12, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v5, v0

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    const/16 v1, -0x50

    .line 1572
    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v6

    move-object v0, v7

    move/from16 v1, p2

    move v2, v13

    move v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZI)V

    move-object v3, v7

    .line 1576
    .local v3, "listener":Landroid/view/InsetsController$InternalAnimationControlListener;
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1578
    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getDurationMs()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 1579
    nop

    .line 1580
    xor-int/lit8 v9, p2, 0x1

    xor-int/lit8 v10, p2, 0x1

    .line 1576
    xor-int/lit8 v11, v13, 0x1

    move-object v0, p0

    move v1, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 1582
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 1
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 1392
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 1393
    return-void
.end method

.method public blacklist calculateInsets(ZZIIIII)Landroid/view/WindowInsets;
    .locals 17
    .param p1, "isScreenRound"    # Z
    .param p2, "alwaysConsumeSystemBars"    # Z
    .param p3, "windowType"    # I
    .param p4, "windowingMode"    # I
    .param p5, "legacySoftInputMode"    # I
    .param p6, "legacyWindowFlags"    # I
    .param p7, "legacySystemUiFlags"    # I

    .line 886
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v13, p3

    iput v13, v0, Landroid/view/InsetsController;->mWindowType:I

    .line 887
    move/from16 v14, p4

    iput v14, v0, Landroid/view/InsetsController;->mLastWindowingMode:I

    .line 888
    move/from16 v15, p5

    iput v15, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    .line 889
    move/from16 v12, p6

    iput v12, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 890
    iput v1, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    .line 891
    iget-object v2, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 895
    iget-boolean v4, v0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    if-eqz v4, :cond_0

    .line 896
    and-int/lit16 v4, v1, -0x101

    move v9, v4

    goto :goto_0

    .line 898
    :cond_0
    move v9, v1

    :goto_0
    const/16 v16, 0x0

    .line 891
    const/4 v4, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, v16

    invoke-virtual/range {v2 .. v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2

    iput-object v2, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 899
    return-object v2
.end method

.method public blacklist calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .locals 6
    .param p1, "windowType"    # I
    .param p2, "windowingMode"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .line 907
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

    .line 1623
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1624
    return-void
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 9
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1101
    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p6

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V

    .line 1103
    return-void
.end method

.method public blacklist dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1672
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1673
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    .line 1671
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1674
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 1675
    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1627
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1629
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1632
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1633
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1634
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1635
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1636
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    const-wide v4, 0x20b00000002L

    invoke-interface {v3, p1, v4, v5}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1634
    .end local v3    # "runner":Landroid/view/InsetsAnimationControlRunner;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1638
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1639
    return-void
.end method

.method public blacklist getAnimationType(I)I
    .locals 3
    .param p1, "type"    # I

    .line 1501
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1502
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1503
    .local v1, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsInternalType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1504
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    .line 1501
    .end local v1    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1507
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getHost()Landroid/view/InsetsController$Host;
    .locals 1

    .line 1801
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public blacklist getLastDispatchedState()Landroid/view/InsetsState;
    .locals 1

    .line 725
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method blacklist getRequestedVisibilities()Landroid/view/InsetsVisibilities;
    .locals 1

    .line 1540
    iget-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    return-object v0
.end method

.method public blacklist getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;
    .locals 3
    .param p1, "type"    # I

    .line 1463
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1464
    .local v0, "controller":Landroid/view/InsetsSourceConsumer;
    if-eqz v0, :cond_0

    .line 1465
    return-object v0

    .line 1467
    :cond_0
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1468
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1469
    return-object v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .locals 1

    .line 716
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .locals 1

    .line 1698
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsAppearanceControlled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1700
    const/4 v0, 0x0

    return v0

    .line 1702
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .locals 1

    .line 1730
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsBehaviorControlled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1732
    const/4 v0, 0x0

    return v0

    .line 1734
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public whitelist hide(I)V
    .locals 1
    .param p1, "types"    # I

    .line 1068
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->hide(IZ)V

    .line 1069
    return-void
.end method

.method public blacklist hide(IZ)V
    .locals 9
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 1073
    const-wide/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1074
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1075
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 1074
    const-string v6, "InsetsController#hide"

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1076
    const-string v3, "IC.hideRequestFromIme"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_0

    .line 1078
    :cond_0
    const-string v3, "IC.hideRequestFromApi"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1080
    :goto_0
    const/4 v0, 0x0

    .line 1081
    .local v0, "typesReady":I
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1082
    .local v1, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 1083
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1084
    .local v5, "internalType":I
    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    .line 1085
    .local v6, "animationType":I
    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v7

    .line 1086
    .local v7, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    :cond_1
    if-ne v6, v4, :cond_2

    .line 1089
    goto :goto_2

    .line 1091
    :cond_2
    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v0, v8

    .line 1082
    .end local v5    # "internalType":I
    .end local v6    # "animationType":I
    .end local v7    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1093
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p0, v0, v2, p2}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 1094
    return-void
.end method

.method public blacklist isRequestedVisible(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 721
    invoke-virtual {p0, p1}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$controlAnimationUnchecked$5$android-view-InsetsController(Landroid/view/InsetsController$PendingControlRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/view/InsetsController$PendingControlRequest;

    .line 1182
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_1

    .line 1183
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string v1, "Cancellation signal abortPendingImeControlRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_0
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1187
    :cond_1
    return-void
.end method

.method synthetic blacklist lambda$controlAnimationUnchecked$6$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 1
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1226
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1227
    return-void
.end method

.method synthetic blacklist lambda$new$3$android-view-InsetsController()V
    .locals 19

    .line 653
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 654
    iget-object v2, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    return-void

    .line 658
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v3, "finishedAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v4, Landroid/view/InsetsState;

    iget-object v5, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 661
    .local v4, "state":Landroid/view/InsetsState;
    iget-object v5, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    const-string v15, "InsetsController"

    if-ltz v5, :cond_4

    .line 662
    iget-object v7, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsController$RunningAnimation;

    .line 663
    .local v7, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    sget-boolean v8, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Running animation type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/view/InsetsController$RunningAnimation;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    iget-object v8, v7, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 665
    .local v8, "runner":Landroid/view/InsetsAnimationControlRunner;
    instance-of v9, v8, Landroid/view/WindowInsetsAnimationController;

    if-eqz v9, :cond_3

    .line 670
    iget-boolean v9, v7, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v9, :cond_2

    .line 671
    invoke-interface {v8}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_2
    move-object v9, v8

    check-cast v9, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v9, v4}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 675
    invoke-interface {v8}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v7    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v8    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 680
    .end local v5    # "i":I
    :cond_4
    iget-object v8, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v5, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 681
    invoke-virtual {v5}, Landroid/view/WindowInsets;->isRound()Z

    move-result v10

    iget-object v5, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v5}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v11

    iget v12, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v13, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 685
    iget-boolean v5, v0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    if-eqz v5, :cond_5

    .line 686
    iget v5, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    and-int/lit16 v5, v5, -0x101

    move v14, v5

    goto :goto_1

    .line 688
    :cond_5
    iget v5, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    move v14, v5

    :goto_1
    iget v5, v0, Landroid/view/InsetsController;->mWindowType:I

    iget v7, v0, Landroid/view/InsetsController;->mLastWindowingMode:I

    const/16 v17, 0x0

    .line 680
    move/from16 v16, v7

    move-object v7, v4

    move-object/from16 v18, v15

    move v15, v5

    invoke-virtual/range {v7 .. v17}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v5

    .line 690
    .local v5, "insets":Landroid/view/WindowInsets;
    iget-object v7, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 691
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 690
    invoke-interface {v7, v5, v8}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 692
    sget-boolean v7, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 693
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowInsetsAnimation;

    .line 694
    .local v8, "anim":Landroid/view/WindowInsetsAnimation;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 695
    invoke-virtual {v8}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v8}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v6

    .line 694
    const-string v10, "Running animation type: %d, progress: %f"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v18

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v8    # "anim":Landroid/view/WindowInsetsAnimation;
    goto :goto_2

    .line 699
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_7

    .line 700
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0, v6}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 699
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 702
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method synthetic blacklist lambda$startAnimation$7$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 6
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "types"    # I
    .param p3, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p4, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .param p5, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1648
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    sget-boolean v0, Landroid/view/InsetsController;->WARN:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsController"

    const-string/jumbo v1, "startAnimation canceled before preDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_0
    return-void

    .line 1652
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1653
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1652
    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1654
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1655
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 1656
    .local v4, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_2

    .line 1657
    iput-boolean v3, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    .line 1654
    .end local v4    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1660
    .end local v0    # "i":I
    :cond_3
    const-string v0, "IC.pendingAnim"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1661
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 1662
    iput-boolean v3, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 1663
    move-object v0, p1

    check-cast v0, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v0, v3}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    .line 1664
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 1665
    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 1666
    return-void
.end method

.method synthetic blacklist lambda$updateState$4$android-view-InsetsController([I)V
    .locals 1
    .param p1, "cancelledUserAnimationTypes"    # [I

    .line 797
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method blacklist notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .locals 5
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1396
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    .line 1398
    .local v0, "types":I
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1400
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1401
    .local v1, "taskbarConsumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1402
    return-void

    .line 1406
    .end local v1    # "taskbarConsumer":Landroid/view/InsetsSourceConsumer;
    :cond_0
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1407
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1408
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    .line 1409
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_1

    .line 1410
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1406
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1413
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_3

    .line 1414
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1416
    :cond_3
    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 3
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 1370
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->isCancelRequested()Z

    move-result v0

    const-string v1, "InsetsController"

    if-eqz v0, :cond_0

    .line 1371
    const-string v0, "Skip notifyFinished if the animation finished but cancel requested."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void

    .line 1375
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1376
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_1

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

    .line 1377
    :cond_1
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1380
    return-void

    .line 1382
    :cond_2
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 1383
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/view/InsetsController;->showDirectly(IZ)V

    goto :goto_0

    .line 1385
    :cond_3
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    .line 1386
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    .line 1385
    invoke-direct {p0, v1, v0, v2, v0}, Landroid/view/InsetsController;->hideDirectly(IZIZ)V

    .line 1388
    :goto_0
    return-void
.end method

.method public blacklist notifyVisibilityChanged()V
    .locals 1

    .line 1474
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1475
    return-void
.end method

.method public blacklist onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .locals 13
    .param p1, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 915
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 916
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 917
    .local v3, "activeControl":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_0

    .line 919
    iget-object v4, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 916
    .end local v3    # "activeControl":Landroid/view/InsetsSourceControl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 926
    :cond_1
    iput-boolean v0, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    .line 927
    sget-object v1, Landroid/view/InsetsState;->POLICY_CONTROL_ITYPES:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 928
    .local v2, "type":I
    iget-object v4, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSourceControl;

    .line 929
    .local v4, "control":Landroid/view/InsetsSourceControl;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->isControlledByPolicy()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 932
    iput-boolean v3, p0, Landroid/view/InsetsController;->mSystemBarControlledByPolicy:Z

    .line 933
    iget-object v3, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 935
    .end local v2    # "type":I
    .end local v4    # "control":Landroid/view/InsetsSourceControl;
    :cond_2
    goto :goto_1

    .line 939
    :cond_3
    const/4 v1, 0x0

    .line 940
    .local v1, "requestedVisibilityStale":Z
    new-array v2, v3, [I

    .line 941
    .local v2, "showTypes":[I
    new-array v4, v3, [I

    .line 944
    .local v4, "hideTypes":[I
    iget-object v5, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_4

    .line 945
    iget-object v6, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceConsumer;

    .line 946
    .local v6, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceControl;

    .line 950
    .local v7, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v6, v7, v2, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    .line 944
    .end local v6    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v7    # "control":Landroid/view/InsetsSourceControl;
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 954
    .end local v5    # "i":I
    :cond_4
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_a

    .line 955
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceControl;

    .line 956
    .local v6, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    .line 957
    .local v7, "type":I
    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    .line 958
    .local v8, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v8, v6, v2, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    .line 960
    if-nez v1, :cond_9

    .line 961
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v9

    .line 966
    .local v9, "requestedVisible":Z
    iget-object v10, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 967
    invoke-virtual {v10, v7}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v10

    if-eq v9, v10, :cond_5

    move v10, v3

    goto :goto_4

    :cond_5
    move v10, v0

    .line 971
    .local v10, "requestedVisibilityChanged":Z
    :goto_4
    const/16 v11, 0x13

    if-ne v7, v11, :cond_6

    if-eqz v9, :cond_6

    move v11, v3

    goto :goto_5

    :cond_6
    move v11, v0

    .line 973
    .local v11, "imeRequestedVisible":Z
    :goto_5
    if-nez v10, :cond_8

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_7
    move v12, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v12, v3

    :goto_7
    move v1, v12

    .line 954
    .end local v6    # "control":Landroid/view/InsetsSourceControl;
    .end local v7    # "type":I
    .end local v8    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v9    # "requestedVisible":Z
    .end local v10    # "requestedVisibilityChanged":Z
    .end local v11    # "imeRequestedVisible":Z
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 977
    .end local v5    # "i":I
    :cond_a
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 979
    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .restart local v5    # "i":I
    :goto_8
    if-ltz v5, :cond_b

    .line 980
    iget-object v6, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsController$RunningAnimation;

    iget-object v6, v6, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v6, v7}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 979
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 983
    .end local v5    # "i":I
    :cond_b
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 987
    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v5

    .line 988
    .local v5, "animatingTypes":I
    aget v6, v2, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v2, v0

    .line 989
    aget v6, v4, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 991
    aget v6, v2, v0

    if-eqz v6, :cond_c

    .line 992
    aget v6, v2, v0

    invoke-virtual {p0, v6, v3, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 994
    :cond_c
    aget v3, v4, v0

    if-eqz v3, :cond_d

    .line 995
    aget v3, v4, v0

    invoke-virtual {p0, v3, v0, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 999
    :cond_d
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1000
    return-void
.end method

.method public blacklist onFrameChanged(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 707
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 711
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 712
    return-void
.end method

.method public blacklist onRequestedVisibilityChanged(Landroid/view/InsetsSourceConsumer;)V
    .locals 1
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1512
    iget-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1513
    return-void
.end method

.method public blacklist onStateChanged(Landroid/view/InsetsState;)Z
    .locals 7
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 730
    const/4 v0, 0x0

    .line 731
    .local v0, "stateChanged":Z
    sget-boolean v1, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 732
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    invoke-direct {p0}, Landroid/view/InsetsController;->captionInsetsUnchanged()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    move v0, v1

    goto :goto_2

    .line 736
    :cond_2
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v2, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    .line 739
    :goto_2
    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    return v2

    .line 742
    :cond_3
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStateChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 745
    invoke-interface {v5}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 746
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 743
    const-string v5, "InsetsController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v4, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v4, p1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 751
    new-instance v4, Landroid/view/InsetsState;

    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v4, v6, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 752
    .local v4, "lastState":Landroid/view/InsetsState;
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    .line 753
    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 755
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v4, v2, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 757
    if-eqz v1, :cond_4

    const-string/jumbo v1, "onStateChanged, notifyInsetsChanged"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_4
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 759
    invoke-direct {p0, v4}, Landroid/view/InsetsController;->startResizingAnimationIfNeeded(Landroid/view/InsetsState;)V

    .line 761
    :cond_5
    return v3
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1
    .param p1, "hasViewFocused"    # Z

    .line 1489
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 1490
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    .line 1496
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 1497
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1785
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    .line 1786
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 1779
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1781
    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 1790
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1791
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1792
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1793
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1794
    .local v3, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1795
    invoke-virtual {v3, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 1792
    .end local v3    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1798
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 2
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1680
    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1

    .line 1686
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 1689
    :cond_1
    return-void

    .line 1681
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1682
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 1683
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 1739
    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    .line 1740
    return-void
.end method

.method public blacklist setCaptionInsetsHeight(I)V
    .locals 6
    .param p1, "height"    # I

    .line 1708
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_0

    .line 1709
    return-void

    .line 1711
    :cond_0
    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-eq v0, p1, :cond_2

    .line 1712
    iput p1, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 1713
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 1714
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    goto :goto_0

    .line 1717
    :cond_1
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 1719
    :goto_0
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1721
    :cond_2
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .locals 1
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 1693
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 1694
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .locals 1
    .param p1, "behavior"    # I

    .line 1725
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    .line 1726
    return-void
.end method

.method public whitelist show(I)V
    .locals 1
    .param p1, "types"    # I

    .line 1004
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->show(IZ)V

    .line 1005
    return-void
.end method

.method public blacklist show(IZ)V
    .locals 15
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 1009
    move-object v12, p0

    move/from16 v13, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int v0, p1, v0

    const-string v1, "InsetsController"

    if-eqz v0, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show(ime(), fromIme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    const/4 v0, 0x0

    const-string v2, "IC.showRequestFromApiToImeReady"

    const-wide/16 v3, 0x8

    const/4 v5, 0x0

    if-eqz v13, :cond_1

    .line 1013
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v6

    iget-object v7, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1014
    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1013
    const-string v8, "InsetsController#show"

    invoke-virtual {v6, v8, v7, v0}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1015
    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1016
    const-string v2, "IC.showRequestFromIme"

    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_0

    .line 1018
    :cond_1
    const-string v6, "IC.showRequestFromApi"

    invoke-static {v3, v4, v6, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1019
    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1022
    :goto_0
    if-eqz v13, :cond_2

    iget-object v2, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v2, :cond_2

    .line 1023
    iget-object v14, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1024
    .local v14, "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v0, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1025
    iget-object v0, v12, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, v12, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1029
    iget v1, v14, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v14, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v14, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-wide v6, v14, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    iget-object v8, v14, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    iget v9, v14, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v10, v14, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v11, v14, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 1036
    return-void

    .line 1041
    .end local v14    # "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    :cond_2
    const/4 v0, 0x0

    .line 1042
    .local v0, "typesReady":I
    invoke-static/range {p1 .. p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 1043
    .local v2, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_8

    .line 1044
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1045
    .local v6, "internalType":I
    invoke-virtual {p0, v6}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v7

    .line 1046
    .local v7, "animationType":I
    invoke-virtual {p0, v6}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    .line 1047
    .local v8, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_3

    const/4 v9, -0x1

    if-eq v7, v9, :cond_4

    :cond_3
    if-nez v7, :cond_5

    .line 1051
    :cond_4
    sget-boolean v9, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 1053
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v4

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1051
    const-string/jumbo v10, "show ignored for type: %d animType: %d requestedVisible: %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1056
    :cond_5
    if-eqz v13, :cond_6

    if-ne v7, v10, :cond_6

    .line 1058
    goto :goto_2

    .line 1060
    :cond_6
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v9

    invoke-static {v9}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v9

    or-int/2addr v0, v9

    .line 1043
    .end local v6    # "internalType":I
    .end local v7    # "animationType":I
    .end local v8    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1062
    .end local v3    # "i":I
    :cond_8
    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show typesReady: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_9
    invoke-virtual {p0, v0, v4, v13}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 1064
    return-void
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 9
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
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

    .line 1646
    .local p1, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 1647
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v8, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v8}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    .line 1667
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility(IZZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "visible"    # Z
    .param p3, "hasControl"    # Z

    .line 1482
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(IZZ)V

    .line 1483
    return-void
.end method
