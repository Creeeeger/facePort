.class final Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;
.super Ljava/lang/Object;
.source "SerializedAmplitudeStepWaveform.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;,
        Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAmplitudes:[I

.field private final blacklist mRepeatIndex:I

.field private final blacklist mTimings:[J


# direct methods
.method private constructor blacklist <init>([J[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    iput-object p2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    iput p3, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>([J[IILcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;-><init>([J[II)V

    return-void
.end method

.method private blacklist writeWaveformEntry(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "waveform-entry"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    aget v0, v0, p2

    const/4 v2, -0x1

    const-string v3, "amplitude"

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string v2, "default"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    aget v2, v2, p2

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    aget-wide v2, v2, p2

    const-string v4, "durationMs"

    invoke-interface {p1, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedAmplitudeStepWaveform{timings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amplitudes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mAmplitudes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

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

    const-string/jumbo v1, "waveform-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mTimings:[J

    array-length v2, v2

    const-string/jumbo v3, "repeating"

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->writeWaveformEntry(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;->mRepeatIndex:I

    if-ltz v0, :cond_2

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
