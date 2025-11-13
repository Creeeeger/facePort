.class public Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;
.super Lcom/android/settings/biometrics/BiometricStatusPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final KEY_FACE_SETTINGS:Ljava/lang/String; = "face_settings"


# instance fields
.field protected final mFaceManager:Landroid/hardware/face/FaceManager;

.field protected final mFaceStatusUtils:Lcom/android/settings/biometrics/face/FaceStatusUtils;

.field mPreference:Lcom/android/settingslib/RestrictedPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "face_settings"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "face_settings"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceStatusUtils;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getUserId()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/biometrics/face/FaceStatusUtils;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceManager;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceStatusUtils:Lcom/android/settings/biometrics/face/FaceStatusUtils;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private updateStateInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceStatusUtils:Lcom/android/settings/biometrics/face/FaceStatusUtils;

    iget-object v0, v0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->updateStateInternal(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceStatusUtils:Lcom/android/settings/biometrics/face/FaceStatusUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummaryText()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceStatusUtils:Lcom/android/settings/biometrics/face/FaceStatusUtils;

    iget v0, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1429d4

    goto :goto_0

    :cond_0
    const v1, 0x7f1429d2

    :goto_0
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    const/16 v3, 0x80

    invoke-static {v2, v3, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f140d0c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const v1, 0x7f1429d1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isDeviceSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceStatusUtils:Lcom/android/settings/biometrics/face/FaceStatusUtils;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isHardwareSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->updateStateInternal()V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public setSummaryColor(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mFaceStatusUtils:Lcom/android/settings/biometrics/face/FaceStatusUtils;

    iget-object v1, v0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, v0, Lcom/android/settings/biometrics/face/FaceStatusUtils;->mUserId:I

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->updateStateInternal()V

    return-void
.end method

.method public updateStateInternal(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
