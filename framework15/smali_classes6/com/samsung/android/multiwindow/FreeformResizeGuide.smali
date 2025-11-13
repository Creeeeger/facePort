.class public Lcom/samsung/android/multiwindow/FreeformResizeGuide;
.super Ljava/lang/Object;
.source "FreeformResizeGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;,
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;,
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$FreeformGuideWindowType;
    }
.end annotation


# static fields
.field private static final blacklist DEFER_DISMISSING_TIMEOUT_MARGIN:J = 0xaL

.field private static final blacklist INVALID_MAX_SIZE:I = -0x1

.field private static final blacklist INVALID_MIN_SIZE:I = -0x1

.field public static final blacklist MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field public static final blacklist MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x30

.field public static final blacklist STATE_MINIMIZING:I = 0x1

.field public static final blacklist STATE_NONE:I = -0x1

.field public static final blacklist STATE_RESIZING:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCtrlType:I

.field private blacklist mDeferDismissingTimeout:J

.field private blacklist mDismissRequested:Z

.field private blacklist mDismissed:Z

.field private final blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mFreeformGuideViewFullscreenMargin:I

.field private final blacklist mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

.field private final blacklist mLastBounds:Landroid/graphics/Rect;

.field private blacklist mMaxHeight:I

.field private blacklist mMaxWidth:I

.field private blacklist mMinHeight:I

.field private blacklist mMinWidth:I

.field private blacklist mMinimizeFreeformPadding:I

.field private final blacklist mMinimizeTriggerBounds:Landroid/graphics/Rect;

.field private blacklist mNeedToFullscreenTransition:Z

.field private final blacklist mNotAdjustedBounds:Landroid/graphics/Rect;

.field private blacklist mReadyToMinimize:Z

.field private final blacklist mStableBounds:Landroid/graphics/Rect;

.field private blacklist mState:I

.field private blacklist mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

.field private blacklist mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

.field private final blacklist mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDismissRequested(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissRequested:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDismissed(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowManager(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDismissed(Lcom/samsung/android/multiwindow/FreeformResizeGuide;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Lcom/samsung/android/multiwindow/FreeformResizeGuide;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->update(ILandroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;)V

    return-void
.end method

.method private blacklist checkIfReadyToMinimize(Landroid/graphics/Rect;II)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    if-gt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    sub-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v1, Landroid/graphics/Rect;->right:I

    :cond_2
    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_6

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_6
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_7

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_7
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    if-nez v2, :cond_d

    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->isShowingAppIcon()Z

    move-result v2

    if-nez v2, :cond_d

    nop

    const/16 v2, 0x31

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->performHapticFeedback(I)V

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->showAppIcon()V

    goto :goto_3

    :cond_8
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    if-eqz v6, :cond_d

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    const/4 v2, 0x0

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v3, p2, :cond_9

    const/4 v2, 0x1

    :cond_9
    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v3, p3, :cond_a

    const/4 v2, 0x1

    :cond_a
    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v3, p2, :cond_b

    const/4 v2, 0x1

    :cond_b
    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v3, p3, :cond_c

    const/4 v2, 0x1

    :cond_c
    if-nez v2, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->hideAppIcon()V

    :cond_d
    :goto_3
    return-void
.end method

.method private blacklist generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x18

    const/4 v5, -0x2

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v1, "FreeformResizeGuideWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v1, 0x103059e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method private blacklist hideAppIcon()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->startHideAppIconAnimation()V

    return-void
.end method

.method private blacklist isShowingAppIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->isShowingAppIcon()Z

    move-result v0

    return v0
.end method

.method private blacklist performHapticFeedback(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->performHapticFeedback(I)Z

    return-void
.end method

.method private blacklist showAppIcon()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->startShowAppIconAnimation()V

    return-void
.end method

.method private blacklist snapToFullscreen(Landroid/graphics/Rect;)Z
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    return v0
.end method


# virtual methods
.method public blacklist adjustDexDockingTaskBounds(ILandroid/graphics/Rect;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p3

    iput v0, p2, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist adjustMinMaxSize(Landroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    if-gt v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    if-lt v4, v5, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    if-lt v5, v6, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    if-eqz v0, :cond_5

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_4

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_4
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    :cond_5
    :goto_4
    if-eqz v1, :cond_7

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_6

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_6
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    :cond_7
    :goto_5
    if-eqz v4, :cond_9

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_8

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :cond_8
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    :cond_9
    :goto_6
    if-eqz v5, :cond_b

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_a

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_a
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    :cond_b
    :goto_7
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    move v6, v3

    goto :goto_8

    :cond_c
    move v6, v2

    :goto_8
    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    move v7, v3

    goto :goto_9

    :cond_d
    move v7, v2

    :goto_9
    if-nez v6, :cond_f

    if-eqz v7, :cond_e

    goto :goto_a

    :cond_e
    goto :goto_b

    :cond_f
    :goto_a
    move v2, v3

    :goto_b
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateGuideState(I)Z

    return-void
.end method

.method public blacklist asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist canResizeGesture()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->needToFullscreenTransition()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->readyToMinimize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist dismiss()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissRequested:Z

    iget-wide v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    if-nez v5, :cond_0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public blacklist getMinHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    return v0
.end method

.method public blacklist handleResizeGesture(Landroid/graphics/Rect;II)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreenIfNeeded(Landroid/graphics/Rect;I)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->checkIfReadyToMinimize(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public blacklist hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->hide()V

    return-void
.end method

.method blacklist isDexTaskDocked(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist needToFullscreenTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    return v0
.end method

.method public blacklist readyToMinimize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    return v0
.end method

.method public blacklist resetGestureState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    return-void
.end method

.method public blacklist setCtrlType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    return-void
.end method

.method public blacklist setNotAdjustedBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist show(Landroid/graphics/Rect;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    iget-object v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->show(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->show(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public blacklist snapToBounds(J)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V

    return-void
.end method

.method public blacklist snapToBounds(Landroid/graphics/Rect;)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V

    return-void
.end method

.method public blacklist snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V
    .locals 1

    if-eqz p7, :cond_0

    iput-wide p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$mreset(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmAnimationDuration(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;J)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0, p4}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmInterpolator(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0, p5}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmFromAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0, p6}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmToAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public blacklist snapToFullscreenIfNeeded(Landroid/graphics/Rect;I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gt p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gt p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist updateGuideState(I)Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->setDimViewVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public blacklist updateMinMaxSizeIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Z)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    invoke-static {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    :cond_0
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    :cond_1
    const/16 v1, 0x30

    invoke-static {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    const/16 v3, 0x20

    invoke-static {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    if-eq v4, v2, :cond_3

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v4, v5, :cond_2

    goto :goto_0

    :cond_2
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    :goto_1
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    if-eq v4, v2, :cond_5

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_4

    goto :goto_2

    :cond_4
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    :goto_3
    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->isDexTaskDocked(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-virtual {v5, v4, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->calculateMaxWidth(III)I

    move-result v5

    if-eq v5, v2, :cond_6

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->preserveOrientationOnResize()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    if-eqz p3, :cond_7

    move v5, v6

    goto :goto_4

    :cond_7
    move v5, v7

    :goto_4
    move v2, v5

    goto :goto_5

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_5

    :pswitch_2
    const/4 v2, 0x2

    nop

    :goto_5
    const v5, 0x3f99999a    # 1.2f

    if-ne v2, v7, :cond_8

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    goto :goto_6

    :cond_8
    if-ne v2, v6, :cond_9

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    :cond_9
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist updateResizeGestureInfo(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    return-void
.end method
