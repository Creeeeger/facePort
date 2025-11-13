.class public final Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logicalDisplayHeight:I

.field public final logicalDisplayWidth:I

.field public final nativeOverlayBounds:Landroid/graphics/Rect;

.field public final nativeSensorBounds:Landroid/graphics/Rect;

.field public final naturalDisplayHeight:I

.field public final naturalDisplayWidth:I

.field public final overlayBounds:Landroid/graphics/Rect;

.field public final rotation:I

.field public final scaleFactor:F

.field public final sensorBounds:Landroid/graphics/Rect;

.field public final sensorType:I


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    iput p4, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    iput p5, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    iput p6, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    iput p7, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorType:I

    new-instance p7, Landroid/graphics/Rect;

    invoke-direct {p7, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 p1, 0x3f800000    # 1.0f

    div-float v0, p1, p5

    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->scale(F)V

    iput-object p7, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->nativeSensorBounds:Landroid/graphics/Rect;

    new-instance p7, Landroid/graphics/Rect;

    invoke-direct {p7, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    div-float/2addr p1, p5

    invoke-virtual {p7, p1}, Landroid/graphics/Rect;->scale(F)V

    iput-object p7, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->nativeOverlayBounds:Landroid/graphics/Rect;

    const/4 p1, 0x3

    const/4 p2, 0x1

    if-eq p6, p2, :cond_1

    if-ne p6, p1, :cond_0

    goto :goto_0

    :cond_0
    move p5, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p5, p4

    :goto_1
    iput p5, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->logicalDisplayWidth:I

    if-eq p6, p2, :cond_3

    if-ne p6, p1, :cond_2

    goto :goto_2

    :cond_2
    move p3, p4

    :cond_3
    :goto_2
    iput p3, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->logicalDisplayHeight:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, p4

    :goto_1
    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_4
    move v3, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, p6

    :goto_2
    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    const/4 p7, 0x3

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v1

    move p6, v2

    move p7, v3

    move p8, v0

    move p9, v4

    invoke-direct/range {p2 .. p9}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    iget v3, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    iget v3, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    iget v3, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    iget v3, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorType:I

    iget p1, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorType:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UdfpsOverlayParams(sensorBounds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", overlayBounds="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", naturalDisplayWidth="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayWidth:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", naturalDisplayHeight="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->naturalDisplayHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scaleFactor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rotation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sensorType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorType:I

    const-string v0, ")"

    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
