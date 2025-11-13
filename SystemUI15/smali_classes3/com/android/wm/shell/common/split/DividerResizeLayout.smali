.class public Lcom/android/wm/shell/common/split/DividerResizeLayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BLUR_PRESET:[F

.field public static final DARK_BLUR_PRESET:[F

.field public static final ONE_EASING:Landroid/view/animation/Interpolator;

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;

.field public static final SINE_OUT_60:Landroid/view/animation/Interpolator;

.field public static final WINDOW_ALPHA_ANIM_DURATION:J


# instance fields
.field public mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

.field public mAttachedToWindow:Z

.field public mBackgroundColor:I

.field public mCellHostStageType:I

.field public mCornerRadius:I

.field public mDividerSize:I

.field public mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field public mFinishRunnable:Ljava/lang/Runnable;

.field public final mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

.field public mFirstLayoutCalled:Z

.field public final mGuideBarBounds:Landroid/graphics/Rect;

.field public mGuideBarView:Landroid/widget/ImageView;

.field public mGuideViewBarThickness:I

.field public mHalfSplitStageType:I

.field public mHandler:Landroid/os/Handler;

.field public final mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

.field public mIsMultiSplitActive:Z

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field public mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

.field public final mResizeTargets:Landroid/util/SparseArray;

.field public final mRestrictedBounds:Landroid/graphics/Rect;

.field public final mRootBounds:Landroid/graphics/Rect;

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final mStableInsets:Landroid/graphics/Rect;

.field public mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mTransparentRegion:Landroid/graphics/Region;

.field public mWindowAdded:Z

.field public mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x7

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->BLUR_PRESET:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DARK_BLUR_PRESET:[F

    new-instance v1, Landroid/animation/RectEvaluator;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3e6147ae    # 0.22f

    invoke-direct {v1, v3, v2, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->ONE_EASING:Landroid/view/animation/Interpolator;

    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x96

    :goto_0
    sput-wide v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->WINDOW_ALPHA_ANIM_DURATION:J

    return-void

    nop

    :array_0
    .array-data 4
        0x437a0000    # 250.0f
        0x0
        0x41000000    # 8.0f
        0x41eb3333    # 29.4f
        0x437f0000    # 255.0f
        0x0
        0x43658000    # 229.5f
    .end array-data

    :array_1
    .array-data 4
        0x437a0000    # 250.0f
        0x0
        0x41000000    # 8.0f
        0x41eb3333    # 29.4f
        0x437f0000    # 255.0f
        0x0
        0x4358cccd    # 216.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    new-instance p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;I)V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHalfSplitStageType:I

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCellHostStageType:I

    new-instance p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;I)V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/common/split/DividerResizeLayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final createResizeTarget(I)V
    .locals 7

    if-nez p1, :cond_0

    const v0, 0x7f0a068c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0680

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f0a0b5e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0b59

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const v0, 0x7f0a0267

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0266

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds3()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    :goto_1
    if-eqz v4, :cond_5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_5
    :goto_3
    const-string p0, "DividerResizeLayout"

    const-string p1, "createResizeTarget: failed, cannot found views"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return v0
.end method

.method public final init(Lcom/android/wm/shell/common/split/DividerView;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerSize:I

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCornerRadius:I

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070aaa

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    iget-object p3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    iget-object p3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p4

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    or-int/2addr p4, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p4, v0

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p4, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCellHostStageType:I

    if-nez p3, :cond_2

    move p3, p2

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    iput p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHalfSplitStageType:I

    :cond_3
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/16 p4, 0xa2b

    const/16 v1, 0x318

    const/4 v2, -0x2

    invoke-direct {p3, p4, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p4, p4, 0x10

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    const p4, 0x800033

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p3, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 p4, 0x40

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    const-string p4, "DividerResizeLayout"

    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean p3, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1060430

    const/4 v1, 0x0

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_2
    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p3}, Landroid/graphics/Region;->setEmpty()V

    if-eqz p1, :cond_6

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean p3, p3, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    iget p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHalfSplitStageType:I

    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p4

    goto :goto_3

    :cond_5
    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p4

    :goto_3
    invoke-virtual {p3, p4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_6
    sget-boolean p3, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    const/4 p4, 0x2

    if-eqz p3, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getFocusedStageType()I

    move-result p1

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean p3, p3, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz p3, :cond_9

    if-eq p1, p4, :cond_8

    iget p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCellHostStageType:I

    if-ne p1, p3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    goto :goto_5

    :cond_9
    iget-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    if-eqz p3, :cond_a

    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHalfSplitStageType:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    goto :goto_5

    :cond_a
    if-nez p1, :cond_b

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    goto :goto_5

    :cond_c
    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCellHostStageType:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    goto :goto_5

    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    :goto_5
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, p2

    :goto_6
    if-ltz p1, :cond_f

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->initialize()V

    :cond_e
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_f
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final isReadyToShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadSnapshotsForResizeTarget()V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_8

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    if-eqz v2, :cond_7

    iget v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTaskId:I

    const/4 v4, -0x1

    const-string v5, "DividerResizeLayout"

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadSnapshot: Cannot find taskId for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget-object v4, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v6, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadSnapshot: Failed to get snapshot for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    move-result v6

    iput-boolean v6, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->containsSecureLayer()Z

    move-result v6

    iget-boolean v7, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    if-eqz v7, :cond_2

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060578

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080d20

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadSnapshot: Failed to get snapshot bitmap for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasWallpaperBitmap()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    iget v9, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    iget v10, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->createSnapshotBitmapWithWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    iget-object v7, v4, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {v8}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DARK_BLUR_PRESET:[F

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/android/wm/shell/common/split/DividerResizeLayout;->BLUR_PRESET:[F

    :goto_2
    const/4 v9, 0x0

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    aget v9, v7, v1

    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    const/4 v9, 0x2

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    const/4 v9, 0x3

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    const/4 v9, 0x4

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    const/4 v9, 0x5

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    const/4 v9, 0x6

    aget v7, v7, v9

    invoke-virtual {v8, v7}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    invoke-virtual {v8, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "loadSnapshot: w="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    move-object v3, v7

    :cond_6
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v6, :cond_7

    iget-object v2, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v3, 0x2000

    if-nez v5, :cond_7

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v3, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    if-eqz v3, :cond_7

    iget-object v3, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->isReadyToShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    :cond_1
    const-string v0, "onReadyToShow"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->postFinishRunnableIfPossible(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/4 p0, 0x0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->isReadyToShow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    :cond_0
    const-string p1, "onReadyToShow"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->postFinishRunnableIfPossible(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final postFinishRunnableIfPossible(Ljava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->shouldDeferRemove(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    const-string/jumbo p2, "postFinishRunnableIfPossible: reason="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DividerResizeLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final shouldDeferRemove(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->isReadyToShow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method
