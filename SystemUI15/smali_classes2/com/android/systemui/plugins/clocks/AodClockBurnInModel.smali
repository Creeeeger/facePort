.class public final Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final scale:F

.field private final translationX:F

.field private final translationY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->scale:F

    iput p2, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationX:F

    iput p3, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationY:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;FFFILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->scale:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationX:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationY:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->copy(FFF)Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->scale:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationX:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationY:F

    return p0
.end method

.method public final copy(FFF)Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;-><init>(FFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;

    iget v1, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->scale:F

    iget v3, p1, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->scale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationX:F

    iget v3, p1, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationY:F

    iget p1, p1, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationY:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->scale:F

    return p0
.end method

.method public final getTranslationX()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationX:F

    return p0
.end method

.method public final getTranslationY()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationY:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->scale:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationX:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationY:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->scale:F

    iget v1, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationX:F

    iget p0, p0, Lcom/android/systemui/plugins/clocks/AodClockBurnInModel;->translationY:F

    const-string v2, "AodClockBurnInModel(scale="

    const-string v3, ", translationX="

    const-string v4, ", translationY="

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
