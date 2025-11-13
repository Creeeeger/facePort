.class public final Landroidx/picker/features/composable/ComposableBitConverter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cachedMapByComposableType:Ljava/util/Map;

.field public final cachedMapByViewType:Ljava/util/Map;

.field public final frameInfo:[Ljava/util/List;

.field public final frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

.field public final maxBit:I

.field public final rangeList:[Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Landroidx/picker/features/composable/ComposableStrategy;)V
    .locals 10

    const-string v0, "frameStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    const/4 p1, 0x4

    new-array v0, p1, [Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_4

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    invoke-interface {v3}, Landroidx/picker/features/composable/ComposableStrategy;->getWidgetFrameList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "UnReachable"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v3, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    invoke-interface {v3}, Landroidx/picker/features/composable/ComposableStrategy;->getTitleFrameList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    invoke-interface {v3}, Landroidx/picker/features/composable/ComposableStrategy;->getIconFrameList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    invoke-interface {v3}, Landroidx/picker/features/composable/ComposableStrategy;->getLeftFrameList()Ljava/util/List;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput-object v0, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameInfo:[Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->cachedMapByViewType:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->cachedMapByComposableType:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    move v4, v1

    move v5, v4

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v6, v0, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    int-to-double v8, v3

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sget-wide v8, Lkotlin/math/Constants;->LN2:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v5

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_2

    :cond_5
    new-array v0, v1, [Lkotlin/ranges/IntRange;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlin/ranges/IntRange;

    iput-object p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->rangeList:[Lkotlin/ranges/IntRange;

    shl-int p1, v3, v5

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->maxBit:I

    return-void
.end method


# virtual methods
.method public final decodeAsFrame(II)Landroidx/picker/features/composable/ComposableFrame;
    .locals 4

    iget-object v0, p0, Landroidx/picker/features/composable/ComposableBitConverter;->rangeList:[Lkotlin/ranges/IntRange;

    aget-object v0, v0, p1

    iget v1, v0, Lkotlin/ranges/IntProgression;->last:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    shl-int v1, v2, v1

    iget v0, v0, Lkotlin/ranges/IntProgression;->first:I

    shl-int v3, v2, v0

    sub-int/2addr v1, v3

    and-int/2addr p2, v1

    shr-int/2addr p2, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameInfo:[Ljava/util/List;

    aget-object p0, p0, p1

    sub-int/2addr p2, v2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/features/composable/ComposableFrame;

    return-object p0
.end method
