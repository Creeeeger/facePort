.class public final Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    invoke-direct {v0}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;-><init>()V

    sput-object v0, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 9

    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/layout/DisplayFeature;

    instance-of v2, v1, Landroidx/window/extensions/layout/FoldingFeature;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    check-cast v1, Landroidx/window/extensions/layout/FoldingFeature;

    sget-object v2, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v2, Landroidx/window/layout/HardwareFoldingFeature$Type;->Companion:Landroidx/window/layout/HardwareFoldingFeature$Type$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/window/layout/HardwareFoldingFeature$Type;->HINGE:Landroidx/window/layout/HardwareFoldingFeature$Type;

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/window/layout/HardwareFoldingFeature$Type;->Companion:Landroidx/window/layout/HardwareFoldingFeature$Type$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/window/layout/HardwareFoldingFeature$Type;->FOLD:Landroidx/window/layout/HardwareFoldingFeature$Type;

    :goto_1
    invoke-virtual {v1}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eq v6, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    sget-object v4, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_2

    :cond_4
    sget-object v4, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    :goto_2
    new-instance v5, Landroidx/window/core/Bounds;

    invoke-virtual {v1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroidx/window/layout/WindowMetrics;->_bounds:Landroidx/window/core/Bounds;

    invoke-virtual {v6}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eq v7, v8, :cond_6

    invoke-virtual {v5}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-eq v7, v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v5}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ne v7, v8, :cond_8

    invoke-virtual {v5}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_8

    goto :goto_3

    :cond_8
    new-instance v3, Landroidx/window/layout/HardwareFoldingFeature;

    new-instance v5, Landroidx/window/core/Bounds;

    invoke-virtual {v1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v5, v1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v3, v5, v2, v4}, Landroidx/window/layout/HardwareFoldingFeature;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/HardwareFoldingFeature$Type;Landroidx/window/layout/FoldingFeature$State;)V

    :cond_9
    :goto_3
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    invoke-direct {p0, v0}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0
.end method
