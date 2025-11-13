.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApClientSetDataLimitPreferenceController"


# instance fields
.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

.field private mMacAddress:Ljava/lang/String;

.field private mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiApClientSettings(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmClientSetDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

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
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "handlePreferenceTreeClick - Triggered"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TETH_014"

    const-string v2, "8083"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Dialog is showing, ignore"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1432fe

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1432ef

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDataLimitDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;)V

    invoke-direct {v3, v4, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V

    iput-object v0, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditTextWatcher:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mContext:Landroid/content/Context;

    iput-object v7, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v5, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iput-object v6, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDialogMessage:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mClientSetDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v2
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

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    return-void
.end method

.method public setMacDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDataLimitDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p1

    iget-wide v0, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f141a50

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
