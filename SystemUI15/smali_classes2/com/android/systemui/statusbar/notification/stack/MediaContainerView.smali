.class public final Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public clipHeight:I

.field public final clipPath:Landroid/graphics/Path;

.field public final clipRect:Landroid/graphics/RectF;

.field public cornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b30

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->cornerRadius:F

    return-void
.end method


# virtual methods
.method public final createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;-><init>()V

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070b30

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->cornerRadius:F

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->cornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public final performAddAnimation(JZJ)V
    .locals 0

    return-void
.end method

.method public final performRemoveAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final setVisibility(I)V
    .locals 2

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;->shouldBeVisible:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_2
    if-eq p1, v1, :cond_3

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;->shouldBeVisible:Z

    if-nez p0, :cond_4

    if-nez p1, :cond_4

    const-string p0, "MediaContainerView"

    const-string p1, "MediaContainerView should be GONE but its visibility changed to VISIBLE"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final updateClipping$1()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;->clipHeight:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
