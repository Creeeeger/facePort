.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RoutineRecommendCardForSoundMode;
.super Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getButtonLoggingValue()Ljava/lang/String;
    .locals 0

    const-string p0, "RoutineSoundMode"

    return-object p0
.end method

.method public final getCardContent(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f141e3c

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportProfileType()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method
