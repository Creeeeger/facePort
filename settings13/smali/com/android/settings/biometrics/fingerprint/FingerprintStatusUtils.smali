.class public Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;
.super Ljava/lang/Object;
.source "FingerprintStatusUtils.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 45
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mUserId:I

    return-void
.end method


# virtual methods
.method public getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsClassName()Ljava/lang/String;
    .locals 0

    .line 91
    const-class p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->hasEnrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->sec_fingerprint_added_summary:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 73
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_profile_preference_summary_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_1
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_summary_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolled()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
