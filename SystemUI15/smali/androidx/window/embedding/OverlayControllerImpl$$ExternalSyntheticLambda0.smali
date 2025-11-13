.class public final synthetic Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroidx/window/embedding/OverlayControllerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/OverlayControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/OverlayControllerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/OverlayControllerImpl;

    check-cast p1, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;

    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object v1

    sget-object v2, Landroidx/window/layout/util/DensityCompatHelper;->Companion:Landroidx/window/layout/util/DensityCompatHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->INSTANCE:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getDensity()F

    sget-object v2, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->translateWindowMetrics$window_release(Landroid/view/WindowMetrics;)Landroidx/window/layout/WindowMetrics;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getActivityStackTag()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->INSTANCE:Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "androidx.window.embedding.EmbeddingBounds"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    new-instance v6, Landroidx/window/embedding/EmbeddingBounds;

    new-instance v7, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    const-string v8, "androidx.window.embedding.EmbeddingBounds.alignment"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroidx/window/embedding/EmbeddingBounds$Alignment;-><init>(I)V

    const-string v8, "androidx.window.embedding.EmbeddingBounds.width"

    invoke-static {v4, v8}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getDimension(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v8

    const-string v9, "androidx.window.embedding.EmbeddingBounds.height"

    invoke-static {v4, v9}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getDimension(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v4

    invoke-direct {v6, v7, v8, v4}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    :goto_0
    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Landroidx/window/embedding/OverlayAttributes;

    invoke-direct {v5, v6}, Landroidx/window/embedding/OverlayAttributes;-><init>(Landroidx/window/embedding/EmbeddingBounds;)V

    :goto_1
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v4

    invoke-static {v4}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->translateWindowMetrics$window_release(Landroid/view/WindowMetrics;)Landroidx/window/layout/WindowMetrics;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    sget-object p1, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowLayoutInfo()Landroidx/window/extensions/layout/WindowLayoutInfo;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    iget-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/embedding/OverlayAttributes;

    if-nez p1, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t retrieve overlay attributes from launch options"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move-object v5, p1

    :goto_2
    iget-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5, v1}, Landroidx/window/embedding/OverlayControllerImpl;->toActivityStackAttributes(Landroidx/window/embedding/OverlayAttributes;Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
