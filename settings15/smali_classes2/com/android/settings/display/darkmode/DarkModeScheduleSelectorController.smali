.class public Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DarkModeScheduleSelectorController"


# instance fields
.field private final mBedtimeSettings:Lcom/android/settings/display/darkmode/BedtimeSettings;

.field private mCurrentMode:I

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Landroidx/preference/DropDownPreference;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPowerManager:Landroid/os/PowerManager;

    const-class p2, Landroid/location/LocationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mLocationManager:Landroid/location/LocationManager;

    new-instance p2, Lcom/android/settings/display/darkmode/BedtimeSettings;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/BedtimeSettings;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mBedtimeSettings:Lcom/android/settings/display/darkmode/BedtimeSettings;

    return-void
.end method

.method private getCurrentMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const v0, 0x7f140b4b

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mBedtimeSettings:Lcom/android/settings/display/darkmode/BedtimeSettings;

    invoke-virtual {v0}, Lcom/android/settings/display/darkmode/BedtimeSettings;->getBedtimeSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightModeCustomType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7f140b4a

    goto :goto_0

    :cond_1
    const v0, 0x7f140b49

    goto :goto_0

    :cond_2
    const v0, 0x7f140b48

    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mBedtimeSettings:Lcom/android/settings/display/darkmode/BedtimeSettings;

    invoke-virtual {p1}, Lcom/android/settings/display/darkmode/BedtimeSettings;->getBedtimeSettingsIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

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

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    iget p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mCurrentMode:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f140b4b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, p2}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f140b48

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p2}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/TwilightLocationDialog;->show(Landroid/content/Context;)V

    return v1

    :cond_3
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2, v0}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f140b49

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_5

    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f140b4a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2, v1}, Landroid/app/UiModeManager;->setNightModeCustomType(I)V

    :cond_6
    :goto_1
    iput p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mCurrentMode:I

    return v1
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

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mCurrentMode:I

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
