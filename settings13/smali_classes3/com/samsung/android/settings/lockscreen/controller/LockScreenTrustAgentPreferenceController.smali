.class public Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LockScreenTrustAgentPreferenceController.java"


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "lockscreen_trust_agent"

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mUserId:I

    .line 60
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->setPreferenceInformation()V

    return-void
.end method

.method private setIntentInformation()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iget-object v1, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private setPreferenceInformation()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 70
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePreferenceInformation()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v0, v0, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iget-object v1, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->setIntentInformation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->updatePreferenceInformation()V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mTrustAgents:Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v2, 0x5

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    .line 135
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    .line 138
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x0

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->lock_screen_smart_lock_disabled_summary_tablet:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->lock_screen_smart_lock_disabled_summary:I

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

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 87
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->setIntentInformation()V

    const/16 v0, 0x1130

    const/16 v1, 0x1156

    .line 89
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 91
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    .line 92
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0xb1

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForceVerifyPath(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
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

.method public startTrustAgent()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
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

    .line 166
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 168
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public updatePreference()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
