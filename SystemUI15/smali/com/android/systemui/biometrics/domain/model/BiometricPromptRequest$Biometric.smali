.class public final Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;
.super Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allowBackgroundAuthentication:Z

.field public final componentNameForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

.field public final logoBitmap:Landroid/graphics/Bitmap;

.field public final logoDescription:Ljava/lang/String;

.field public final modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

.field public final negativeButtonText:Ljava/lang/String;

.field public final opPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Ljava/lang/String;)V
    .locals 11

    move-object v9, p0

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v10, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v10

    :goto_1
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move-object v2, v10

    :goto_3
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v0

    goto :goto_5

    :cond_5
    :goto_4
    move-object v3, v10

    :goto_5
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isShowEmergencyCallButton()Z

    move-result v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p4

    iput-object v0, v9, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    move-object/from16 v0, p5

    iput-object v0, v9, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->opPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getLogoDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->logoDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    move-object v10, v0

    :cond_7
    :goto_6
    iput-object v10, v9, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getRealCallerForConfirmDeviceCredentialActivity()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->componentNameForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->allowBackgroundAuthentication:Z

    return-void
.end method
