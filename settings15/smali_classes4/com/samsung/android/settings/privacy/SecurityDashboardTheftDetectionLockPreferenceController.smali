.class public Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityDashboardTheftDetectionLockPreferenceController"


# instance fields
.field private mConsentDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mIsFeatureTurnedOn:Z

.field private mIsFirstTimeOnBoarded:Z

.field private mIsScreenLockSet:Z

.field private final mIsTheftDetectionLockSupported:Z

.field private mPreference:Landroidx/preference/SecPreference;


# direct methods
.method public static synthetic $r8$lambda$2Lw9eKSi6OXKEd009i91nbj7C98(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->handleConsentResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isOfflineLockSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsTheftDetectionLockSupported:Z

    return-void
.end method

.method private handleConsentResult(Landroidx/activity/result/ActivityResult;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleDialogResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const-string v2, "SecurityDashboardTheftDetectionLockPreferenceController"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "key_theft_detection_lock_first_time_on_boarding_status"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->updateTheftProtectionSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsScreenLockSet:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->launchScreenLockDialog(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private updateMenuStatus()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsScreenLockSet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsFirstTimeOnBoarded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0607b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f142f03

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateParameters()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theft_detection_lock_setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsFeatureTurnedOn:Z

    const-string v3, "key_theft_detection_lock_first_time_on_boarding_status"

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsFirstTimeOnBoarded:Z

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->updateTheftProtectionSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    const-string v1, "key_theft_protection_preference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsFirstTimeOnBoarded:Z

    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isScreenLockEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsScreenLockSet:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsTheftDetectionLockSupported:Z

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->updateParameters()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsFirstTimeOnBoarded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsFeatureTurnedOn:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsScreenLockSet:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_theft_detection_lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsFeatureTurnedOn:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mConsentDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "THEFT_DETECTION_LOCK"

    invoke-static {p1, p0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftProtectionConsentUtils;->launchDialogIntent(Landroid/content/Context;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "key_theft_detection_lock_first_time_on_boarding_status"

    invoke-static {p1, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->updateTheftProtectionSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mIsScreenLockSet:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->launchChooseLockScreen(Landroid/content/Context;)V

    :cond_1
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init(Landroidx/fragment/app/Fragment;)V
    .locals 2

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;)V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->mConsentDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

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

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->updateParameters()V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionLockPreferenceController;->updateMenuStatus()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
