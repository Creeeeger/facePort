.class public final Landroid/os/vibrator/persistence/VibrationXmlParser;
.super Ljava/lang/Object;
.source "VibrationXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;,
        Landroid/os/vibrator/persistence/VibrationXmlParser$VibrationXmlParserException;,
        Landroid/os/vibrator/persistence/VibrationXmlParser$Flags;
    }
.end annotation


# static fields
.field public static final blacklist APPLICATION_VIBRATION_XML_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.haptics.vibration+xml"

.field public static final blacklist FLAG_ALLOW_HIDDEN_APIS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "VibrationXmlParser"


# direct methods
.method public static synthetic blacklist $r8$lambda$-R-0-KdYRLwY70_HKmLQlQShGJ8(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$CboBSd8Io_UpVlYlm872u5okLwk(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isSupportedMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/vnd.android.haptics.vibration+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseDocument(Ljava/io/Reader;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/persistence/ParsedVibration;
    :try_end_0
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VibrationXmlParser"

    const-string v2, "Error parsing vibration/vibration-select XML"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "I",
            "Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentStart(Lcom/android/modules/utils/TypedXmlPullParser;)V

    invoke-interface {p2, v0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;->parse(Lcom/android/modules/utils/TypedXmlPullParser;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    return-object v1
.end method

.method public static blacklist parseElement(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/vibrator/persistence/VibrationXmlParser$VibrationXmlParserException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/vibrator/persistence/VibrationXmlParser$VibrationXmlParserException;

    const-string v2, "Error parsing vibration-select."

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/os/vibrator/persistence/VibrationXmlParser$VibrationXmlParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlParser$VibrationXmlParserException-IA;)V

    throw v1
.end method

.method private static blacklist parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "vibration-select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "vibration-effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag name when parsing element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationSelectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v1

    return-object v1

    :pswitch_1
    new-instance v1, Landroid/os/vibrator/persistence/ParsedVibration;

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/vibrator/persistence/ParsedVibration;-><init>(Landroid/os/VibrationEffect;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x97892c -> :sswitch_1
        0x18700497 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist parseVibrationEffect(Ljava/io/Reader;)Landroid/os/VibrationEffect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;
    :try_end_0
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VibrationXmlParser"

    const-string v2, "Error parsing vibration XML"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;->parseTag(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;->deserialize()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    return-object v1
.end method

.method private static blacklist parseVibrationSelectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    const-string/jumbo v0, "vibration-select"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/vibrator/persistence/ParsedVibration;

    invoke-direct {v2, v1}, Landroid/os/vibrator/persistence/ParsedVibration;-><init>(Ljava/util/List;)V

    return-object v2
.end method
