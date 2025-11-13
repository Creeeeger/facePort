.class final Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
.super Ljava/lang/Object;
.source "SerializedCompositionPrimitive.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;
    }
.end annotation


# instance fields
.field private final blacklist mPrimitiveDelayMs:I

.field private final blacklist mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field private final blacklist mPrimitiveScale:F


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    iput p2, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    iput p3, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->getPrimitiveId()I

    move-result v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedCompositionPrimitive{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "primitive-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveName:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-virtual {v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "scale"

    iget v3, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveScale:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v2, "delayMs"

    iget v3, p0, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;->mPrimitiveDelayMs:I

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
