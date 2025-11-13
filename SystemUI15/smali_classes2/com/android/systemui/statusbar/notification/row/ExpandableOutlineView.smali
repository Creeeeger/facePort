.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EMPTY_PATH:Landroid/graphics/Path;


# instance fields
.field public mAlwaysRoundBothCorners:Z

.field public mCustomOutline:Z

.field public mDismissUsingRowTranslationX:Z

.field public mOutlineAlpha:F

.field public final mOutlineRect:Landroid/graphics/Rect;

.field public final mProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

.field public mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

.field public final mTmpCornerRadii:[F

.field public final mTmpPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpCornerRadii:[F

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens$3()V

    return-void
.end method


# virtual methods
.method public applyRoundnessAndInvalidate()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    return-void
.end method

.method public childNeedsClipping(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    move-result-object v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    if-eqz v2, :cond_2

    instance-of v2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    instance-of v2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iput-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;Landroid/util/IndentingPrintWriter;)V

    invoke-static {p1, p2}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getClipPath(Z)Landroid/graphics/Path;
    .locals 13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result p1

    float-to-int p1, p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, v3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    move v3, v2

    move v2, v1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    move v0, p1

    move p1, v3

    move v3, v2

    move v2, v12

    :goto_2
    sub-int v4, v0, v2

    if-nez v4, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-object p0

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    :goto_3
    sget v4, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpCornerRadii:[F

    aput v4, v10, v1

    const/4 v1, 0x1

    aput v4, v10, v1

    const/4 v1, 0x2

    aput v4, v10, v1

    const/4 v1, 0x3

    aput v4, v10, v1

    const/4 v1, 0x4

    aput v4, v10, v1

    const/4 v1, 0x5

    aput v4, v10, v1

    const/4 v1, 0x6

    aput v4, v10, v1

    const/4 v1, 0x7

    aput v4, v10, v1

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, p1

    int-to-float v9, v0

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOutlineAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    return p0
.end method

.method public final getOutlineTranslation()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    return-object p0
.end method

.method public final initDimens$3()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v1, :cond_0

    const v1, 0x7f070bad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const v1, 0x7f070b30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/notification/RoundableState;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/systemui/statusbar/notification/RoundableState;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/notification/Roundable;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    cmpg-float v2, v2, v0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iput v0, v1, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/RoundableState;->roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method public final isClippingNeeded()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v3, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public needsOutline()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public setActualHeight(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    :cond_0
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    :cond_0
    return-void
.end method

.method public final setOutlineRect(FFFF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    return-void
.end method
