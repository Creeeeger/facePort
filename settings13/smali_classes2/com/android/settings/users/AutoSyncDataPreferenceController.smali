.class public Lcom/android/settings/users/AutoSyncDataPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoSyncDataPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;,
        Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;
    }
.end annotation


# instance fields
.field private mAutoSyncBroadcastReceiver:Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

.field private final mParentFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mSwitchPreference:Landroidx/preference/SecSwitchPreference;

.field protected mUserHandle:Landroid/os/UserHandle;

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSwitchPreference(Lcom/android/settings/users/AutoSyncDataPreferenceController;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 2

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;-><init>(Lcom/android/settings/users/AutoSyncDataPreferenceController;Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    const-string/jumbo v0, "user"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 91
    iput-object p2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mParentFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 92
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method private isBlockedByEDM()Z
    .locals 6

    const-string v0, "false"

    .line 389
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    .line 391
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 393
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RoamingPolicy"

    const-string v5, "isRoamingSyncEnabled"

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 399
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 400
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p0

    .line 401
    invoke-interface {p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isMultiSimModel()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 403
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    .line 402
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    const-string v2, "gsm.operator.isroaming"

    .line 404
    invoke-static {p0, v2, v0}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 406
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    .line 415
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isBlockedByEDM: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AutoSyncDataController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroidx/preference/SecSwitchPreference;

    .line 100
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "auto_sync_account_data"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/account/AccountUtils;->removeDualAppManagedProfiles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 188
    invoke-virtual {p0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result p0

    if-nez p0, :cond_1

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public onPause()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0x8

    const/16 v0, 0x122b

    .line 140
    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 141
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p2

    if-nez p2, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->isBlockedByEDM()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object p2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 148
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->newInstance(ZILjava/lang/String;)Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mParentFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 149
    invoke-virtual {p1, p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->show(Landroidx/preference/PreferenceFragmentCompat;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "AutoSyncDataController"

    const-string p1, "ignoring monkey\'s attempt to flip sync state"

    .line 145
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->isBlockedByEDM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 163
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 166
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 173
    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 108
    check-cast p1, Landroidx/preference/SecSwitchPreference;

    .line 109
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 114
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 113
    invoke-static {p0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
