.class public final Lcom/android/systemui/animation/FontInterpolator$VarFontKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public index:I

.field public final sortedAxes:Ljava/util/List;

.field public sourceId:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sourceId:I

    iput p2, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->index:I

    iput-object p3, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/fonts/Font;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/fonts/Font;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result p1

    check-cast p2, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    new-instance p2, Lcom/android/systemui/animation/FontInterpolator$VarFontKey$_init_$lambda$1$$inlined$sortBy$1;

    invoke-direct {p2}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey$_init_$lambda$1$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;-><init>(IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    iget v1, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sourceId:I

    iget v3, p1, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sourceId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->index:I

    iget v3, p1, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->index:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->index:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sourceId:I

    iget v1, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->index:I

    iget-object p0, p0, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    const-string v2, "VarFontKey(sourceId="

    const-string v3, ", index="

    const-string v4, ", sortedAxes="

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
