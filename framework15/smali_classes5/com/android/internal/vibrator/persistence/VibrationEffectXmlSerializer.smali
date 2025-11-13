.class public final Lcom/android/internal/vibrator/persistence/VibrationEffectXmlSerializer;
.super Ljava/lang/Object;
.source "VibrationEffectXmlSerializer.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    const-string v1, "Unsupported VibrationEffect type %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Unsupported empty VibrationEffect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v2, v1, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_0

    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlSerializer;->serializePredefinedEffect(Landroid/os/VibrationEffect$Composed;I)Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    move-result-object v2

    return-object v2

    :cond_0
    instance-of v2, v1, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlSerializer;->serializePrimitiveEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlSerializer;->serializeWaveformEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    const-string v1, "Unsupported segment for predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/PrebakedSegment;

    nop

    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->findById(II)Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Unsupported predefined effect id %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_2

    nop

    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unsupported predefined effect with should fallback %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V

    return-object v2
.end method

.method private static blacklist serializePredefinedEffect(Landroid/os/VibrationEffect$Composed;I)Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const-string v2, "Unsupported repeating predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v1, "Unsupported multiple segments in predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v2, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlSerializer;->serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;)V

    return-object v1
.end method

.method private static blacklist serializePrimitiveEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Unsupported repeating primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlSerializer;->serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    invoke-direct {v2, v1}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;)V

    return-object v2
.end method

.method private static blacklist serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    instance-of v0, p0, Landroid/os/vibrator/PrimitiveSegment;

    const-string v1, "Unsupported segment for primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/PrimitiveSegment;

    nop

    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->findById(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unsupported primitive effect id %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v3

    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FI)V

    return-object v2
.end method

.method private static blacklist serializeWaveformEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/vibrator/StepSegment;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unsupported segment for waveform effect %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->setRepeatIndexToCurrentEntry()V

    :cond_0
    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Unsupported segment with non-default frequency %f"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v6

    invoke-static {v6}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlSerializer;->toAmplitudeInt(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->addDurationAndAmplitude(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;)V

    return-object v2
.end method

.method private static blacklist toAmplitudeInt(F)I
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0
.end method
