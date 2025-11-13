.class public final Landroidx/compose/ui/graphics/vector/VectorGroup;
.super Landroidx/compose/ui/graphics/vector/VectorNode;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final children:Ljava/util/List;

.field public final clipPathData:Ljava/util/List;

.field public final name:Ljava/lang/String;

.field public final pivotX:F

.field public final pivotY:F

.field public final rotation:F

.field public final scaleX:F

.field public final scaleY:F

.field public final translationX:F

.field public final translationY:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    iput p3, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    iput p4, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    iput p5, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    iput p6, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    iput p7, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    iput p8, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    iput-object p9, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    iput-object p10, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    instance-of v2, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    iget-object p1, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorGroup;)V

    return-object v0
.end method
