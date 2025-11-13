.class public final Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public baselineShift:F

.field public boxPosition:Landroid/graphics/PointF;

.field public boxSize:Landroid/graphics/PointF;

.field public color:I

.field public fontName:Ljava/lang/String;

.field public justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public lineHeight:F

.field public size:F

.field public strokeColor:I

.field public strokeOverFill:Z

.field public strokeWidth:F

.field public text:Ljava/lang/String;

.field public tracking:I


# virtual methods
.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    mul-int/2addr v2, v1

    const/16 v0, 0x20

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int/2addr v2, p0

    return v2
.end method
