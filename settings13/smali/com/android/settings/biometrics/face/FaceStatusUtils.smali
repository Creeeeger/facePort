.class public Lcom/android/settings/biometrics/face/FaceStatusUtils;
.super Ljava/lang/Object;
.source "FaceStatusUtils.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/face/FaceManager;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 45
    iput p3, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mUserId:I

    return-void
.end method


# virtual methods
.method public getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsClassName()Ljava/lang/String;
    .locals 0

    .line 84
    const-class p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .line 70
    sget v0, Lcom/android/settings/R$string;->security_settings_face_preference_summary_none:I

    .line 71
    iget v1, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget v0, Lcom/android/settings/R$string;->security_settings_face_profile_preference_summary_none:I

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceStatusUtils;->hasEnrolled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 75
    sget v0, Lcom/android/settings/R$string;->sec_face_register_summary:I

    .line 74
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolled()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget p0, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
