.class final Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
.super Ljava/lang/Object;
.source "SerializedPredefinedEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect$Parser;
    }
.end annotation


# instance fields
.field private final blacklist mEffectName:Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

.field private final blacklist mShouldFallback:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mEffectName:Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    iput-boolean p2, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mShouldFallback:Z

    return-void
.end method


# virtual methods
.method public blacklist deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mEffectName:Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->getEffectId()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mShouldFallback:Z

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedPredefinedEffect{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mEffectName:Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mShouldFallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    const-string/jumbo v1, "predefined-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mEffectName:Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    invoke-virtual {v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mShouldFallback:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "fallback"

    iget-boolean v3, p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;->mShouldFallback:Z

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
