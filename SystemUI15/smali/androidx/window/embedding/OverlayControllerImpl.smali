.class public final Landroidx/window/embedding/OverlayControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final adapter:Landroidx/window/embedding/EmbeddingAdapter;

.field public final embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

.field public final globalLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final overlayTagToContainerMap:Landroid/util/ArrayMap;

.field public final overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

.field public final overlayTagToDefaultAttributesMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    sget-object p2, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    new-instance p2, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/window/embedding/OverlayControllerImpl;)V

    invoke-interface {p1, p2}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->setActivityStackAttributesCalculator(Landroidx/window/extensions/core/util/function/Function;)V

    new-instance p2, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/window/embedding/OverlayControllerImpl;)V

    invoke-interface {p1, p2, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->registerActivityStackCallback(Ljava/util/concurrent/Executor;Landroidx/window/extensions/core/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final cleanUpDismissedOverlayContainerRecords(Ljava/util/Set;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {v3, v2}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->getActivityStackToken(Ljava/lang/String;)Landroidx/window/extensions/embedding/ActivityStack$Token;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final toActivityStackAttributes(Landroidx/window/embedding/OverlayAttributes;Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/extensions/embedding/ActivityStackAttributes;
    .locals 13

    new-instance v0, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;-><init>()V

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    sget-object p0, Landroidx/window/layout/util/DensityCompatHelper;->Companion:Landroidx/window/layout/util/DensityCompatHelper$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->INSTANCE:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v7

    sget-object p0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->translateWindowMetrics$window_release(Landroid/view/WindowMetrics;)Landroidx/window/layout/WindowMetrics;

    move-result-object p0

    new-instance v8, Landroidx/window/embedding/ParentContainerInfo;

    new-instance v3, Landroidx/window/core/Bounds;

    iget-object v2, p0, Landroidx/window/layout/WindowMetrics;->_bounds:Landroidx/window/core/Bounds;

    invoke-virtual {v2}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowLayoutInfo()Landroidx/window/extensions/layout/WindowLayoutInfo;

    move-result-object p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v4

    iget-object v5, p0, Landroidx/window/layout/WindowMetrics;->_windowInsetsCompat:Landroidx/core/view/WindowInsetsCompat;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/window/embedding/ParentContainerInfo;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;Landroidx/core/view/WindowInsetsCompat;Landroid/content/res/Configuration;F)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    iget-object p1, p1, Landroidx/window/embedding/OverlayAttributes;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    iget-object p2, p1, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p1, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    if-eqz v1, :cond_0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/window/core/Bounds;->Companion:Landroidx/window/core/Bounds$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/window/core/Bounds;->EMPTY_BOUNDS:Landroidx/window/core/Bounds;

    goto/16 :goto_4

    :cond_0
    iget-object p0, v8, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p1, p0}, Landroidx/window/embedding/EmbeddingBounds;->shouldUseFallbackDimensionForWidth$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result v1

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_1

    sget-object p2, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-direct {p2, v4}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;-><init>(F)V

    :cond_1
    invoke-virtual {p1, p0}, Landroidx/window/embedding/EmbeddingBounds;->shouldUseFallbackDimensionForHeight$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-direct {v3, v4}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;-><init>(F)V

    :cond_2
    new-instance v1, Landroidx/window/embedding/EmbeddingBounds;

    iget-object p1, p1, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-direct {v1, p1, p2, v3}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    iget-object p2, v8, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    invoke-virtual {p2}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v3

    invoke-virtual {v1, p0}, Landroidx/window/embedding/EmbeddingBounds;->shouldUseFallbackDimensionForWidth$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result v5

    iget-object v6, v1, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    if-eqz v5, :cond_3

    sget-object v5, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-direct {v5, v4}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;-><init>(F)V

    goto :goto_0

    :cond_3
    move-object v5, v6

    :goto_0
    instance-of v7, v5, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    const-string v8, "Unhandled width dimension="

    const-string v9, " windowLayoutInfo="

    const-string v10, " taskBounds="

    const-string v11, "Unhandled condition to get height in pixel! embeddingBounds="

    iget-object v12, v1, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    if-eqz v7, :cond_4

    check-cast v5, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    iget v5, v5, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    float-to-int v3, v5

    goto :goto_1

    :cond_4
    instance-of v7, v5, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    if-eqz v7, :cond_5

    check-cast v5, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    iget v5, v5, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_5
    sget-object v3, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion$DIMENSION_HINGE$1;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {p0}, Landroidx/window/embedding/EmbeddingBounds;->getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/window/layout/HardwareFoldingFeature;

    iget-object v3, v3, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/Bounds;

    invoke-virtual {v3}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object v3

    sget-object v5, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroidx/window/core/Bounds;->left:I

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_6
    sget-object v5, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroidx/window/core/Bounds;->right:I

    sub-int/2addr v5, v3

    move v3, v5

    :goto_1
    invoke-virtual {p2}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v5

    invoke-virtual {v1, p0}, Landroidx/window/embedding/EmbeddingBounds;->shouldUseFallbackDimensionForHeight$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-direct {v7, v4}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;-><init>(F)V

    goto :goto_2

    :cond_7
    iget-object v7, v1, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    :goto_2
    instance-of v4, v7, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    if-eqz v4, :cond_8

    check-cast v7, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    iget p0, v7, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    int-to-float v1, v5

    mul-float/2addr p0, v1

    float-to-int p0, p0

    goto :goto_3

    :cond_8
    instance-of v4, v7, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    if-eqz v4, :cond_9

    check-cast v7, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    iget p0, v7, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_3

    :cond_9
    sget-object v4, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion$DIMENSION_HINGE$1;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {p0}, Landroidx/window/embedding/EmbeddingBounds;->getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/window/layout/HardwareFoldingFeature;

    iget-object v4, v4, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/Bounds;

    invoke-virtual {v4}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object v4

    sget-object v5, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget p0, v4, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroidx/window/core/Bounds;->top:I

    sub-int/2addr p0, v1

    goto :goto_3

    :cond_a
    sget-object v5, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget p0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroidx/window/core/Bounds;->bottom:I

    sub-int/2addr v1, p0

    move p0, v1

    :goto_3
    invoke-virtual {p2}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/window/core/Bounds;->getHeight()I

    move-result p2

    if-ne v3, v1, :cond_b

    if-ne p0, p2, :cond_b

    sget-object p0, Landroidx/window/core/Bounds;->Companion:Landroidx/window/core/Bounds$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/window/core/Bounds;->EMPTY_BOUNDS:Landroidx/window/core/Bounds;

    goto :goto_4

    :cond_b
    new-instance v4, Landroidx/window/core/Bounds;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v3, p0}, Landroidx/window/core/Bounds;-><init>(IIII)V

    sget-object v6, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    invoke-static {v4, v1, v5}, Landroidx/window/embedding/EmbeddingBounds$Companion;->offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;

    move-result-object p0

    goto :goto_4

    :cond_c
    sget-object v6, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    sub-int/2addr p2, p0

    div-int/2addr p2, v2

    invoke-static {v4, v5, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;

    move-result-object p0

    goto :goto_4

    :cond_d
    sget-object v5, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    sub-int/2addr p2, p0

    invoke-static {v4, v1, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;

    move-result-object p0

    goto :goto_4

    :cond_e
    sget-object v5, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    sub-int/2addr v1, v3

    sub-int/2addr p2, p0

    div-int/2addr p2, v2

    invoke-static {v4, v1, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;

    move-result-object p0

    :goto_4
    invoke-virtual {p0}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->setRelativeBounds(Landroid/graphics/Rect;)Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    move-result-object p0

    sget-object p1, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    new-instance p1, Landroidx/window/extensions/embedding/WindowAttributes;

    sget-object p2, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->ON_ACTIVITY_STACK:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 v2, 0x1

    :cond_f
    invoke-direct {p1, v2}, Landroidx/window/extensions/embedding/WindowAttributes;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->setWindowAttributes(Landroidx/window/extensions/embedding/WindowAttributes;)Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->build()Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown alignment: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
