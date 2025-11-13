.class public Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;
.super Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CHOOSE_LOCK_GENERIC:Ljava/lang/String; = "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment"

.field public static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "SecurityDashboardScreenLockPreferenceController"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mUserId:I

    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private startFragment()Z
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fromScreenLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hierarchical_parent"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v3, v1, Lcom/android/settings/SettingsActivity;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v3, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-string v5, "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment"

    iget-object v6, v3, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v5, v6, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    const/16 v5, 0x7b

    invoke-virtual {v3, v0, v5}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    instance-of v5, v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iput v0, v6, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v3}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return v2

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment, requestCode: 123)"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private updateMenuStatus()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isScreenLockEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mIsScreenLockEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    sget-boolean v1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mIsScreenLockEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0607b7

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14296f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0607b8

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14296e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    if-eqz p0, :cond_2

    const-string v1, "key_screen_lock"

    const-string v2, "SL"

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "security_dashboard_status"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->updateMenuStatus()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isMDMEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getBackupKeys()Ljava/util/List;

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

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getLaunchIntent()Landroid/content/Intent;

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

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_screen_lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2348

    const v1, 0xdade

    invoke-static {p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->startFragment()Z

    return v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f142965

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

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

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->isControllable()Z

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

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

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

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isMDMEnabled(Landroid/content/Context;)Z

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

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->updateMenuStatus()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
