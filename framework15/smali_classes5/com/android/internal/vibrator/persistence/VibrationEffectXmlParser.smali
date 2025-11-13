.class public Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;
.super Ljava/lang/Object;
.source "VibrationEffectXmlParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseTag(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "vibration-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;->parseVibrationContent(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method static blacklist parseVibrationContent(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    nop

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Unsupported empty vibration tag"

    invoke-static {v2, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "primitive-effect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "waveform-effect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "predefined-effect"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    new-instance v2, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in vibration tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;)V

    goto :goto_2

    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    invoke-direct {v3, v4}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;)V

    move-object v2, v3

    goto :goto_2

    :pswitch_2
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;

    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;)V

    nop

    :goto_2
    invoke-static {p0, v0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f1c8cc8 -> :sswitch_2
        -0x2d8d05df -> :sswitch_1
        0x8e61537 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
