.class public Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final CHANGE_TRUST_AGENT_SETTINGS:I = 0xb1

.field private static final KEY_TRUST_AGENT:Ljava/lang/String; = "lockscreen_trust_agent"

.field private static final SMART_LOCK:Ljava/lang/String; = "Smart Lock"

.field private static final TAG:Ljava/lang/String; = "LockScreenTrustAgentPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHost:Landroidx/fragment/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

.field private mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "lockscreen_trust_agent"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mUserId:I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->setPreferenceInformation()V

    return-void
.end method

.method private setIntentInformation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iget-object v1, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private setPreferenceInformation()V
    .locals 4

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProviderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updatePreferenceInformation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v0, v0, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->setIntentInformation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->updatePreferenceInformation()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v2, 0x5

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/knox/UCMUtils;->isUCMKeyguardEnabledForCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f141581

    goto :goto_0

    :cond_0
    const v0, 0x7f141580

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->setIntentInformation()V

    const/16 v0, 0x1130

    const-string v1, "LSE4438"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0xb1

    iput v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForceVerifyPath:Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

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

.method public startTrustAgent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public updatePreference()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
