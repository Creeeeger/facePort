.class final Lcom/android/settings/password/SetNewPasswordController;
.super Ljava/lang/Object;
.source "SetNewPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetNewPasswordController$Ui;
    }
.end annotation


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromSecNonBiometrics:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mShowCredentialTypeOnly:Z

.field private final mTargetUserId:I

.field private final mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;


# direct methods
.method constructor <init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mShowCredentialTypeOnly:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    .line 102
    iput p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 103
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    iput-object p3, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 105
    iput-object p4, p0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 106
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 107
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/SetNewPasswordController$Ui;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/settings/password/SetNewPasswordController;
    .locals 7

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 80
    invoke-static {p3, v0, v1, p2}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object p2

    .line 81
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    :goto_0
    move v1, p2

    .line 86
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    .line 87
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v4

    .line 88
    new-instance p2, Lcom/android/settings/password/SetNewPasswordController;

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string p3, "device_policy"

    .line 91
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    move-object v0, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/password/SetNewPasswordController;-><init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V

    return-object p2
.end method

.method private getBiometricChooseLockExtras()Landroid/os/Bundle;
    .locals 3

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "request_gk_pw_handle"

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    iget-boolean p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    xor-int/2addr p0, v2

    const-string v1, "for_biometrics"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getFaceChooseLockExtras()Landroid/os/Bundle;
    .locals 3

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "request_gk_pw_handle"

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    iget-boolean p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    xor-int/2addr p0, v2

    const-string v1, "for_face"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getFingerprintChooseLockExtras()Landroid/os/Bundle;
    .locals 3

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "request_gk_pw_handle"

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    iget-boolean p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    xor-int/2addr p0, v2

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private isFaceDisabledByAdmin()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dispatchSetNewPasswordIntent()V
    .locals 7

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mShowCredentialTypeOnly:Z

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_2

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.fingerprint"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.biometrics.face"

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 126
    invoke-virtual {v2, v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->isFingerprintDisabledByAdmin()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 128
    :goto_0
    iget-object v5, p0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v5, :cond_2

    .line 129
    invoke-virtual {v5}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v6, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 130
    invoke-virtual {v5, v6}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->isFaceDisabledByAdmin()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->getBiometricChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 137
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->getFaceChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 139
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->getFingerprintChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    .line 141
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    :goto_2
    iget v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    iget-object p0, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    invoke-interface {p0, v0}, Lcom/android/settings/password/SetNewPasswordController$Ui;->launchChooseLock(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFromSecNonBiometrics(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    return-void
.end method

.method public setShowCredentialTypeOnly(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mShowCredentialTypeOnly:Z

    return-void
.end method
