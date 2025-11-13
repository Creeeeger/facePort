.class public Lcom/android/systemui/RegionInterceptingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# direct methods
.method public static $r8$lambda$poBU2FDiEZ-WE5dImWPjK06PXco(Lcom/android/systemui/RegionInterceptingFrameLayout;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    check-cast v2, Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;

    check-cast v2, Lcom/android/systemui/DisplayCutoutBaseView;

    iget-object v3, v2, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v10

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, v2, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    aget v4, v3, v0

    neg-int v4, v4

    const/4 v5, 0x1

    aget v3, v3, v5

    neg-int v3, v3

    invoke-virtual {v10, v4, v3}, Landroid/graphics/Region;->translate(II)V

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-object v2, v10

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/RegionInterceptingFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/RegionInterceptingFrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/RegionInterceptingFrameLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method
