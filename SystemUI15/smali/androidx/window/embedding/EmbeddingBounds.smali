.class public final Landroidx/window/embedding/EmbeddingBounds;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BOUNDS_EXPANDED:Landroidx/window/embedding/EmbeddingBounds;

.field public static final Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;


# instance fields
.field public final alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

.field public final height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

.field public final width:Landroidx/window/embedding/EmbeddingBounds$Dimension;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    sget-object v2, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-direct {v0, v1, v2, v2}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds;->BOUNDS_EXPANDED:Landroidx/window/embedding/EmbeddingBounds;

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v3, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion$DIMENSION_HINGE$1;

    invoke-direct {v0, v1, v2, v3}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-direct {v0, v1, v3, v2}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-direct {v0, v1, v2, v3}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-direct {v0, v1, v3, v2}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iput-object p3, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    return-void
.end method

.method public static getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;
    .locals 3

    iget-object p0, p0, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/window/layout/FoldingFeature;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/layout/FoldingFeature;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/EmbeddingBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/embedding/EmbeddingBounds;

    iget-object v1, p1, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    iget-object v3, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iget-object v3, p1, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iget-object p1, p1, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    iget v0, v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->value:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iget-object v2, v2, Landroidx/window/embedding/EmbeddingBounds$Dimension;->description:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->description:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final shouldUseFallbackDimensionForHeight$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z
    .locals 2

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion$DIMENSION_HINGE$1;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroidx/window/embedding/EmbeddingBounds;->getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/window/layout/HardwareFoldingFeature;

    invoke-virtual {p1}, Landroidx/window/layout/HardwareFoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object p1

    sget-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->HORIZONTAL:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    filled-new-array {p1, v0}, [Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final shouldUseFallbackDimensionForWidth$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z
    .locals 2

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion$DIMENSION_HINGE$1;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroidx/window/embedding/EmbeddingBounds;->getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/window/layout/HardwareFoldingFeature;

    invoke-virtual {p1}, Landroidx/window/layout/HardwareFoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object p1

    sget-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    filled-new-array {p1, v0}, [Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bounds:{alignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
