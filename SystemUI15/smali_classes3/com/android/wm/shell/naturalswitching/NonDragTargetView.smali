.class public Lcom/android/wm/shell/naturalswitching/NonDragTargetView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mContainingBounds:Landroid/graphics/Rect;

.field public mCornerRadius:I

.field public mDimView:Landroid/view/View;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public mDividerSize:I

.field public final mDragTargetBounds:Landroid/graphics/Rect;

.field public mDragTargetWindowingMode:I

.field public mDropSide:I

.field public mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public mHalfTarget:I

.field public mIsFloatingDragTarget:Z

.field public mIsInitialExpanded:Z

.field public mMainView:Landroid/view/ViewGroup;

.field public mNaturalSwitchingMode:I

.field public final mNonTargets:Landroid/util/SparseArray;

.field public mOnDrawCallback:Ljava/lang/Runnable;

.field public final mOnDrawListener:Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

.field public mPushRegion:I

.field public final mPushRegions:Landroid/util/SparseArray;

.field public mPushed:Z

.field public final mPushedNonTargets:Landroid/util/ArraySet;

.field public mQuarterTarget:I

.field public mScaleDeltaSize:I

.field public mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mStableRect:Landroid/graphics/Rect;

.field public mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsInitialExpanded:Z

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawCallback:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;)V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawListener:Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;
    .locals 3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0276

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object v1, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final getCenterFreeformBounds()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070bc9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070bc8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, v4

    add-int/2addr v1, p0

    invoke-virtual {v2, v4, p0, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2
.end method

.method public final getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    const/16 v1, 0x40

    const/16 v2, 0x8

    const/16 v3, 0x20

    const/16 v4, 0x10

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v5

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v5

    new-instance v5, Landroid/graphics/PointF;

    int-to-float v6, v6

    int-to-float p0, p0

    invoke-direct {v5, v6, p0}, Landroid/graphics/PointF;-><init>(FF)V

    if-ne p1, v4, :cond_0

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getCenterFreeformBounds()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-ne p1, v4, :cond_5

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    if-ne p1, v3, :cond_6

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_7

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-ne p1, v1, :cond_8

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p1, p0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    return-object v0
.end method

.method public final getReverseWindowingMode(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    if-ne p1, p0, :cond_3

    return p2

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    :goto_0
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final getShrinkBounds(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    :goto_0
    iget-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result p1

    xor-int/2addr v3, p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_2

    :cond_4
    :goto_1
    const/4 p1, 0x2

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    invoke-static {v3, v4, p1, v4}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    invoke-static {v4, v5, p1, v5}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v4

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    add-int/2addr v4, v5

    :goto_2
    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    if-eq v5, p1, :cond_9

    if-eq v5, v1, :cond_8

    const/16 p1, 0x8

    if-eq v5, p1, :cond_7

    if-eq v5, v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v4

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v3

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v4

    iput p0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v3

    iput p0, v0, Landroid/graphics/Rect;->left:I

    :goto_3
    return-object v0
.end method

.method public final getTargetUnderPoint(II)Lcom/android/wm/shell/naturalswitching/NonDragTarget;
    .locals 12

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v2

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_b

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_a

    return-object v1

    :cond_2
    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_9

    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    move v6, v5

    :goto_2
    if-ge v5, v3, :cond_7

    iget-object v7, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget-object v8, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->y:F

    int-to-float v9, p2

    cmpg-float v10, v8, v9

    if-gez v10, :cond_4

    iget v10, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v10, v10, v9

    if-gez v10, :cond_5

    :cond_4
    iget v10, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v10, v10, v9

    if-gez v10, :cond_6

    cmpl-float v10, v8, v9

    if-ltz v10, :cond_6

    :cond_5
    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v8

    iget v10, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v8

    div-float/2addr v9, v10

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v7, v9, v7}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v4

    int-to-float v7, p1

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_6

    xor-int/lit8 v4, v6, 0x1

    move v6, v4

    :cond_6
    add-int/lit8 v4, v5, 0x1

    move v11, v5

    move v5, v4

    move v4, v11

    goto :goto_2

    :cond_7
    move v5, v6

    :cond_8
    if-eqz v5, :cond_a

    return-object v1

    :cond_9
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_a

    return-object v1

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final init(ILcom/android/wm/shell/naturalswitching/TaskVisibility;ILcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    const v1, 0x7f0a067e

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    iput-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    if-eqz v0, :cond_0

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    move/from16 v1, p1

    goto :goto_1

    :cond_0
    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :goto_1
    iput v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    move/from16 v1, p3

    iput v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    move-object/from16 v1, p4

    iput-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Landroid/view/View;

    iget-object v2, v6, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDimView:Landroid/view/View;

    iget-object v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v6, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060430

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDimView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDimView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v1

    const/4 v9, 0x3

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    iget v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    iput v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    goto :goto_3

    :cond_2
    iget v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result v1

    if-nez v1, :cond_3

    iput v9, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    iput v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    goto :goto_3

    :cond_3
    iput v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    iput v9, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    goto :goto_3

    :cond_4
    iput v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    if-ne v1, v9, :cond_5

    move v1, v8

    goto :goto_2

    :cond_5
    move v1, v9

    :goto_2
    iput v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    :goto_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050183

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4
    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ab5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mScaleDeltaSize:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105039d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mCornerRadius:I

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v1

    const/16 v10, 0x10

    const/4 v11, 0x0

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    if-eqz v1, :cond_8

    iget v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    if-ne v1, v7, :cond_8

    goto :goto_7

    :cond_8
    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v7

    move v9, v0

    :goto_5
    if-ltz v9, :cond_b

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    if-eq v12, v1, :cond_a

    invoke-static {v12}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v13

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v5

    move-object v0, v13

    move-object/from16 v1, p0

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    iget v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    if-ne v0, v7, :cond_9

    invoke-virtual {v13}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setThumbnail()V

    goto :goto_6

    :cond_9
    invoke-virtual {v13}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    :goto_6
    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_b
    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_b

    :cond_c
    :goto_7
    if-eqz v0, :cond_f

    iget-object v0, v6, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_9

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v13

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v14

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->right:I

    sub-int v0, v14, v0

    iget v1, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1, v3, v1}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v4

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenFeasible(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v7, Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v14, v1

    div-int/lit8 v3, v15, 0x2

    invoke-direct {v7, v0, v11, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v10, v7}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v16, 0xd

    const/16 v17, 0x0

    const/16 v18, 0x10

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v10, v2

    move/from16 v2, v17

    move v11, v3

    move/from16 v3, v16

    move/from16 v19, v4

    move-object v4, v7

    move-object v7, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    iget-object v0, v8, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v4, Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->left:I

    iget v1, v7, Landroid/graphics/Rect;->right:I

    sub-int v1, v14, v1

    invoke-direct {v4, v0, v11, v1, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v0, 0x40

    invoke-virtual {v6, v0, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;

    move-result-object v8

    const/16 v3, 0xd

    const/4 v2, 0x0

    const/16 v5, 0x40

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    iget-object v0, v9, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    :cond_e
    move/from16 v19, v4

    move-object v7, v5

    :goto_8
    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenFeasible(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v4, Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v8, v19

    invoke-direct {v4, v0, v1, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v9, 0x8

    invoke-virtual {v6, v9, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;

    move-result-object v10

    const/16 v3, 0xd

    const/4 v2, 0x0

    const/16 v5, 0x8

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    iget-object v0, v12, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v12}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, v9, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v4, Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v0

    const/4 v0, 0x0

    invoke-direct {v4, v8, v0, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v0, 0x20

    invoke-virtual {v6, v0, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;

    move-result-object v7

    const/16 v3, 0xd

    const/4 v2, 0x0

    const/16 v5, 0x20

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    iget-object v0, v13, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v13}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    :cond_f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v10

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, v4, v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v11, Landroid/graphics/Rect;->top:I

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v11, Landroid/graphics/Rect;->right:I

    goto :goto_a

    :cond_10
    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    :goto_a
    const/16 v3, 0xd

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x1

    move-object v0, v10

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    invoke-virtual {v10}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_11
    :goto_b
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e0

    const v2, 0x100318

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v1, "NS:NonDragTargetView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final initPushRegion(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42340000    # 45.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellDividerBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isNonTargetsHorizontal()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/2addr p1, v3

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p1

    invoke-direct {v3, v4, v2, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p1

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v4, v2, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x78

    invoke-direct {v4, v2, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v2, v4, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final isNonTargetsHorizontal()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    if-ne v0, p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public final isQuarter(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xc

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result p0

    if-ne p0, v2, :cond_4

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public final startTransition(Z)V
    .locals 11

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->startOutlineInsetsAnimationIfNeeded()V

    goto :goto_1

    :cond_1
    iput-boolean v1, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimatingExit:Z

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleX()F

    move-result v5

    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleY()F

    move-result v7

    if-eqz p1, :cond_2

    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-eqz p1, :cond_3

    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    :cond_3
    move v8, v3

    iget-object v9, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;

    move-object v3, v10

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;FFFF)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget$9;

    invoke-direct {v4, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$9;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final swapOrShrinkNonTarget(III)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->undoNonTarget()V

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    :cond_0
    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {p2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_3

    const/16 p2, 0x8

    if-eq p3, p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x4

    if-eq p3, p2, :cond_3

    const/16 p2, 0x10

    if-ne p3, p2, :cond_4

    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getReverseWindowingMode(IZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget p3, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/16 p2, 0x20

    if-eq p3, p2, :cond_7

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final undoNonTarget()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getReverseWindowingMode(IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    :cond_2
    :goto_0
    return-void
.end method
