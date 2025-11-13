.class public final Lcom/android/systemui/decor/DebugRoundedCornerModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final height:I

.field public final path:Landroid/graphics/Path;

.field public final scaleX:F

.field public final scaleY:F

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Path;IIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->path:Landroid/graphics/Path;

    iput p2, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    iput p3, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    iput p4, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleX:F

    iput p5, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleY:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;

    iget-object v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->path:Landroid/graphics/Path;

    iget-object v3, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->path:Landroid/graphics/Path;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    iget v3, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    iget v3, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleX:F

    iget v3, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleY:F

    iget p1, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleY:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleX:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleY:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->path:Landroid/graphics/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DebugRoundedCornerModel(path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scaleX="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleX:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", scaleY="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleY:F

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
