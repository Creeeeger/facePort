.class public abstract Lcom/android/systemui/biometrics/shared/model/PromptKind$DefaultImpls;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static isCredential(Lcom/android/systemui/biometrics/shared/model/PromptKind;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pattern;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Password;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isOnePaneNoSensorLandscapeBiometric(Lcom/android/systemui/biometrics/shared/model/PromptKind;)Z
    .locals 2

    instance-of v0, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;->paneType:Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;

    :cond_1
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;->ONE_PANE_NO_SENSOR_LANDSCAPE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;

    if-ne v1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isTwoPaneLandscapeBiometric(Lcom/android/systemui/biometrics/shared/model/PromptKind;)Z
    .locals 2

    instance-of v0, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;->paneType:Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;

    :cond_1
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;->TWO_PANE_LANDSCAPE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;

    if-ne v1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
