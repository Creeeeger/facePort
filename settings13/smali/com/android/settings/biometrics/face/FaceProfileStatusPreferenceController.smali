.class public Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;
.super Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;
.source "FaceProfileStatusPreferenceController.java"


# static fields
.field private static final KEY_FACE_SETTINGS:Ljava/lang/String; = "face_settings_profile"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public static synthetic $r8$lambda$iKOCJM3BuMdKKZgHS_qqTMs571U(Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->lambda$updateState$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "face_settings_profile"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "face_settings_profile"

    .line 49
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    .line 50
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    .line 55
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private synthetic lambda$updateState$0()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->security_settings_face_profile_preference_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getAvailabilityStatus()I

    move-result v0

    .line 62
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->isConvenience(Landroid/hardware/face/FaceManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-eqz v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUserId()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    return p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method protected isUserSupported()Z
    .locals 2

    .line 75
    iget v0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUm:Landroid/os/UserManager;

    .line 76
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    .line 77
    invoke-static {p0}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 90
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;)V

    const-string p0, "Settings.FACE_SETTINGS_FOR_WORK_TITLE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
