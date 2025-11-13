.class final Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;
.super Ljava/lang/Object;
.source "SerializedAmplitudeStepWaveform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "waveform-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    const-string/jumbo v4, "repeating"

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseRepeating(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->hasNonZeroDuration()Z

    move-result v3

    const-string v4, "Unexpected %s tag with total duration zero"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseRepeating(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "repeating"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->setRepeatIndexToCurrentEntry()V

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "Unexpected empty %s tag"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    return-void
.end method

.method private static blacklist parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "waveform-entry"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    const-string v0, "durationMs"

    const-string v1, "amplitude"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {p0, v1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;II)I

    move-result v1

    :goto_0
    nop

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4, v1}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->addDurationAndAmplitude(JI)V

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    return-void
.end method
