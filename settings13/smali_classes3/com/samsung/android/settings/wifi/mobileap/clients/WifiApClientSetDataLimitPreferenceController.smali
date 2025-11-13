.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiApClientSetDataLimitPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApClientSetDataLimitPreferenceController"


# instance fields
.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

.field private mMacAddress:Ljava/lang/String;

.field private mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApClientSettings(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClientSetDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

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

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 66
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "handlePreferenceTreeClick - Triggered"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Dialog is showing, ignore"

    .line 71
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_data_limit_client:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDataLimitDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)V

    const-string v5, "Manage the data more efficiently by settings a data limit on how much I will spend a day for each connected device."

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v1
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

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    return-void
.end method

.method public setMacDetail(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 56
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDataLimitDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
