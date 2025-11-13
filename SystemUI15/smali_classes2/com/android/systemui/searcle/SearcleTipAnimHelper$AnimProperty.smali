.class public final Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animType:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public final duration:I

.field public final fromValue:F

.field public final interpolator:Landroid/view/animation/Interpolator;

.field public final startDelay:I

.field public toValue:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->animType:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    iput p2, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->duration:I

    iput p3, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->startDelay:I

    iput p4, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->fromValue:F

    iput p5, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->toValue:F

    iput-object p6, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->animType:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    iget-object v3, p1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->animType:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->duration:I

    iget v3, p1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->duration:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->startDelay:I

    iget v3, p1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->startDelay:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->fromValue:F

    iget v3, p1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->fromValue:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->toValue:F

    iget v3, p1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->toValue:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->animType:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->duration:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->startDelay:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->fromValue:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->toValue:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->animType:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    iget v1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->toValue:F

    iget-object v2, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AnimProperty(animType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->duration:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startDelay="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->startDelay:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fromValue="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->fromValue:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", toValue="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", interpolator="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
