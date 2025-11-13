.class public final Lcom/android/systemui/animation/FontInterpolator$InterpKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public l:Landroid/graphics/fonts/Font;

.field public progress:F

.field public r:Landroid/graphics/fonts/Font;


# direct methods
.method public constructor <init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    iput-object p2, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    iput p3, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->progress:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    iget-object v1, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    iget-object v3, p1, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    iget-object v3, p1, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->progress:F

    iget p1, p1, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->progress:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->progress:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    iget-object v1, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->progress:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InterpKey(l="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", r="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progress="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
