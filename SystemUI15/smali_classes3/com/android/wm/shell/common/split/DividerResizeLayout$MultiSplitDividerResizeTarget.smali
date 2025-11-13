.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;
.super Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mInnerDirection:I

.field public mInnerPosition:I

.field public mOuterPosition:I

.field public final mTmpRootBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mTmpRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->useCellDividerAlgorithm()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->initInnerDirection()V

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerPosition:I

    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mOuterPosition:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculateBoundsForPosition(ILandroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mOuterPosition:I

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerSize:I

    iget-object v8, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->useCellDividerAlgorithm()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mTmpRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerPosition:I

    :goto_2
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mTmpRootBounds:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerSize:I

    invoke-static {p2, p0, p1, v1, v0}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateBoundsForCellWithPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    :cond_3
    return-void
.end method

.method public final getDirection()I
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    :goto_0
    return p0
.end method

.method public final initDirection()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    if-eqz v0, :cond_0

    and-int/lit8 v0, v1, 0x28

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v1, 0x50

    :goto_0
    invoke-static {v0}, Lcom/android/wm/shell/util/StageUtils;->convertStagePositionToDockSide(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    return-void
.end method

.method public final initInnerDirection()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x18

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    if-eq v2, v1, :cond_0

    const/16 v1, 0x30

    if-eq v2, v1, :cond_0

    const/16 v1, 0x48

    if-eq v2, v1, :cond_0

    const/16 v1, 0x60

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 v0, v2, 0x50

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v2, 0x28

    :goto_0
    invoke-static {v0}, Lcom/android/wm/shell/util/StageUtils;->convertStagePositionToDockSide(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final initialize()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->useCellDividerAlgorithm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->initInnerDirection()V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerPosition:I

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mOuterPosition:I

    :cond_0
    invoke-super {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->initialize()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiSplit"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInnerDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final useCellDividerAlgorithm()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-eq p0, v0, :cond_0

    const/16 v0, 0x48

    if-eq p0, v0, :cond_0

    const/16 v0, 0x60

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
