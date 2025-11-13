.class public Lcom/android/settings/location/LocationSwitchBarController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "LocationSwitchBarController.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY_LOCATION_SETTINGS:Ljava/lang/String; = "location_settings"


# instance fields
.field private final mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

.field private final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mValidListener:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLocationEnabler(Lcom/android/settings/location/LocationSwitchBarController;)Lcom/android/settings/location/LocationEnabler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location_settings"

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 64
    new-instance v0, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {v0, p1}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "location_settings"

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 74
    new-instance p2, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    if-eqz p3, :cond_0

    .line 76
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 213
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 215
    invoke-virtual {v1, v0}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 217
    invoke-virtual {v2, v0}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    return v2

    .line 221
    :cond_0
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
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

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 232
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/location/LocationSettings;

    .line 233
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x2af9

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->location_settings_title:I

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public isChecked()Z
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p1

    .line 102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 104
    invoke-virtual {v1, v0}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 106
    invoke-virtual {v2, v0}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 110
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 112
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 118
    :goto_0
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 120
    iget-boolean p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz p2, :cond_1

    .line 121
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 123
    :cond_1
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 124
    iget-boolean p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_2
    return-void
.end method

.method public onLocationOptionChange(Ljava/lang/Object;Z)Z
    .locals 4

    .line 145
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "gps"

    .line 145
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/LocationPolicy"

    const-string v2, "isGPSStateChangeAllowed"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    return v2

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_3

    const/16 p1, 0xbbd

    const/16 v0, 0x11f9

    .line 159
    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_3
    if-eqz p2, :cond_5

    .line 163
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DCM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 165
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->gpsAlertTitle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 167
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->gpsAlertDetail:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 169
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->assistant_security_warning_agree:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v0, Lcom/android/settings/location/LocationSwitchBarController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSwitchBarController$1;-><init>(Lcom/android/settings/location/LocationSwitchBarController;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->assistant_security_warning_disagree:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v0, Lcom/android/settings/location/LocationSwitchBarController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSwitchBarController$2;-><init>(Lcom/android/settings/location/LocationSwitchBarController;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 186
    :cond_4
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, v2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    goto :goto_2

    .line 189
    :cond_5
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    :goto_2
    return v2
.end method

.method public onStart()V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/location/LocationSwitchBarController;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    .line 138
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/location/LocationSwitchBarController;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    .line 207
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
