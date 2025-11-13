.class public abstract Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;
.super Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V
    .locals 11

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v3, v1

    :goto_1
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v4, v1

    :goto_3
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v0

    goto :goto_5

    :cond_8
    :goto_4
    move-object v5, v1

    :goto_5
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isShowEmergencyCallButton()Z

    move-result v9

    const/4 v10, 0x0

    move-object v2, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V

    return-void
.end method
