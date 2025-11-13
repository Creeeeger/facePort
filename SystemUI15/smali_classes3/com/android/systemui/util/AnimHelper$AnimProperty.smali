.class public final Lcom/android/systemui/util/AnimHelper$AnimProperty;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

.field private duration:I

.field private fromValue:F

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private final startDelay:I

.field private toValue:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    iput p2, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    iput p3, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->startDelay:I

    iput p4, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    iput p5, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    iput-object p6, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/AnimHelper$AnimProperty;Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;ILjava/lang/Object;)Lcom/android/systemui/util/AnimHelper$AnimProperty;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->startDelay:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->copy(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)Lcom/android/systemui/util/AnimHelper$AnimProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/android/systemui/util/AnimHelper$AnimationType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->startDelay:I

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    return p0
.end method

.method public final component5()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    return p0
.end method

.method public final component6()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final copy(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)Lcom/android/systemui/util/AnimHelper$AnimProperty;
    .locals 7

    new-instance p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    iget-object v1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    iget-object v3, p1, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    iget v3, p1, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->startDelay:I

    iget v3, p1, Lcom/android/systemui/util/AnimHelper$AnimProperty;->startDelay:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    iget v3, p1, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    iget v3, p1, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p1, Lcom/android/systemui/util/AnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAnimType()Lcom/android/systemui/util/AnimHelper$AnimationType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    return-object p0
.end method

.method public final getDuration()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    return p0
.end method

.method public final getFromValue()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    return p0
.end method

.method public final getInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final getStartDelay()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->startDelay:I

    return p0
.end method

.method public final getToValue()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->startDelay:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setAnimType(Lcom/android/systemui/util/AnimHelper$AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    return-void
.end method

.method public final setFromValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    return-void
.end method

.method public final setToValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->animType:Lcom/android/systemui/util/AnimHelper$AnimationType;

    iget v1, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->duration:I

    iget v2, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->startDelay:I

    iget v3, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->fromValue:F

    iget v4, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->toValue:F

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AnimProperty(animType="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startDelay="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fromValue="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", toValue="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", interpolator="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
