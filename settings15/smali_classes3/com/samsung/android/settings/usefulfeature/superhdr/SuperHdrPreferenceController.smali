.class public Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final SETTING_VALUE_OFF:I = 0x0

.field private static final SETTING_VALUE_ON:I = 0x1

.field private static final SUPER_HDR_KEY:Ljava/lang/String; = "sec_superhdr"

.field private static final SUPER_HDR_NO:Z = false

.field private static final SUPER_HDR_YES:Z = true

.field private static final SURFACE_COMPOSER_INTERFACE_KEY:Ljava/lang/String; = "android.ui.ISurfaceComposer"

.field private static final SURFACE_FLINGER_SERVICE_KEY:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_SUPER_HDR_CODE:I = 0x472


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/SecSwitchPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController$SettingsObserver;

.field private final mSurfaceFlinger:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController$SettingsObserver;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController$SettingsObserver;-><init>(Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController$SettingsObserver;

    const-string p1, "SurfaceFlinger"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private writeSuperHdrSetting(Z)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v3, 0x472

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "sec_superhdr"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_PHOTOHDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "sec_superhdr"

    return-object p0
.end method

.method public getSelectedValue()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sec_superhdr"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417b4

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_superhdr"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController$SettingsObserver;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController$SettingsObserver;->setListening(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/superhdr/SuperHdrPreferenceController;->writeSuperHdrSetting(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
