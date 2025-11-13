.class final Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;
.super Ljava/lang/Object;
.source "SerializedCompositionPrimitive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
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

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "primitive-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    const-string v1, "delayMs"

    const-string/jumbo v2, "scale"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;->parsePrimitiveName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v2, v3, v4, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FFF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    new-instance v3, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    invoke-direct {v3, v0, v2, v1}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FI)V

    return-object v3
.end method

.method private static blacklist parsePrimitiveName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->findByName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected primitive effect name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    const-string v1, "Missing primitive effect name"

    invoke-direct {v0, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
