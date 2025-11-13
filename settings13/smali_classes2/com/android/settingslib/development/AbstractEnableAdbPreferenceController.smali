.class public abstract Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractEnableAdbPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/ConfirmationDialogController;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isAdbEnabled()Z
    .locals 2

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_enabled"

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private notifyStateChanged()V
    .locals 2

    .line 190
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 80
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enable_adb"

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    :cond_0
    return-void
.end method

.method public enablePreference(Z)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_adb"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isUsbBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method isUsbBlocked()Z
    .locals 2

    .line 203
    invoke-static {}, Lcom/android/settingslib/development/SecDeveloperUtils;->isChinaCMCCModel()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo p0, "usb"

    .line 205
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 206
    invoke-static {p0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p0

    .line 208
    invoke-interface {p0}, Landroid/hardware/usb/IUsbManager;->isUsbBlocked()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to check USB Block State"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MemoryPowerCalculator"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isUserAMonkey()Z
    .locals 0

    .line 196
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    return p0
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 140
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isUserAMonkey()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "enable_adb"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAdbEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 173
    invoke-interface {p0, p1}, Lcom/android/settingslib/core/ConfirmationDialogController;->showConfirmationDialog(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->writeAdbSetting(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 116
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAdbEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v2, "isUsbDebuggingEnabled"

    invoke-static {p1, v1, v2, v0}, Lcom/android/settingslib/development/SecDeveloperUtils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->enablePreference(Z)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->enablePreference(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected writeAdbSetting(Z)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->notifyStateChanged()V

    return-void
.end method
