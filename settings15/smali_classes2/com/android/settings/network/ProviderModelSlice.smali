.class public Lcom/android/settings/network/ProviderModelSlice;
.super Lcom/android/settings/wifi/slice/WifiSlice;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

.field public final mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getHelper()Lcom/android/settings/network/ProviderModelSliceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSlice;->mSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static log$6(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProviderModelSlice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createEthernetRow()Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 4

    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f0805e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v3, 0x1010435

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v1}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f140e6c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f142f38

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v1, v0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    return-object v0
.end method

.method public defaultSubscriptionIsUsable(I)Z
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result p0

    return p0
.end method

.method public doCarrierNetworkAction(ZZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-virtual {p1, p3}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkProvisionEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->setCarrierNetworkEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->canConnect()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-class p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;

    return-object p0
.end method

.method public final getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    const-class v0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    const/high16 v1, 0xa000000

    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getHelper()Lcom/android/settings/network/ProviderModelSliceHelper;
    .locals 2

    new-instance v0, Lcom/android/settings/network/ProviderModelSliceHelper;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/ProviderModelSliceHelper;-><init>(Landroid/content/Context;Lcom/android/settings/slices/CustomSliceable;)V

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f141dc6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f1417c9

    const-string v5, ""

    const/16 v1, 0x579

    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMobileDataDisableDialog(ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1417f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f1417f5

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ProviderModelSlice;)V

    const/high16 v1, 0x1040000

    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/ProviderModelSlice;I)V

    const p0, 0x10401b3

    invoke-virtual {p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreference()Landroid/content/SharedPreferences;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-string v0, "ProviderModelSlice"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final getSlice()Landroidx/slice/Slice;
    .locals 14

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    iget-object v3, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    const/4 v3, -0x1

    invoke-interface {v0, v3}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    iget-object v0, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f141388

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/settings/display/AlwaysOnDisplaySlice$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v4, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v4, v0}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_0
    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    const-string p0, "ProviderModelSlice"

    const-string v0, "Guest user is not allowed to configure Internet!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "User is a guest"

    const-string v2, "227470877"

    filled-new-array {v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x534e4554

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v5, 0x6

    goto :goto_2

    :cond_3
    const-string v5, "network provider worker is null."

    invoke-static {v5}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    move v5, v4

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    iget v6, v6, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    :goto_3
    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    const-string v6, "get Ethernet item which is connected"

    invoke-static {v6}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->createEthernetRow()Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    add-int/lit8 v5, v5, -0x1

    :cond_5
    iget-object v6, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_13

    iget-object v6, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v6, :cond_7

    iget-object v9, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_7

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v6

    array-length v6, v6

    if-gtz v6, :cond_6

    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v4

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "hasCarrier: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    if-eqz v6, :cond_13

    iget-object v6, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v6, :cond_9

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    if-ne v6, v3, :cond_8

    goto :goto_6

    :cond_8
    iget-object v3, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_9
    :goto_6
    if-eqz v0, :cond_c

    iget-object v3, v0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v9, v0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget v10, v0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mDefaultDataSubId:I

    iget-object v11, v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkActive()Z

    move-result v11

    if-eqz v11, :cond_a

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v6, v3, v10}, Lcom/android/settings/network/MobileIconGroupExtKt;->getSummaryForSub(Lcom/android/settingslib/SignalIcon$MobileIconGroup;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_a
    invoke-virtual {v9}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v9}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_b
    invoke-virtual {v9}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v9

    invoke-static {v9}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-static {v6}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v6, v3, v10}, Lcom/android/settings/network/MobileIconGroupExtKt;->getSummaryForSub(Lcom/android/settingslib/SignalIcon$MobileIconGroup;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_c
    const-string v3, ""

    :goto_8
    invoke-virtual {v2}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v3, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f1417fe

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_d
    iget-object v9, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    if-nez v9, :cond_e

    move-object v9, v8

    goto :goto_9

    :cond_e
    const/4 v10, 0x2

    invoke-virtual {v9, v10, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v9

    :goto_9
    if-nez v9, :cond_f

    move v9, v4

    goto :goto_a

    :cond_f
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v9

    :goto_a
    if-nez v9, :cond_10

    iget-object v3, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f1417f8

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_10
    iget-object v9, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->activeNetworkIsCellular(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v10, 0x7f1417f4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10, v3}, [Ljava/lang/Object;

    move-result-object v3

    const v10, 0x7f141ca2

    invoke-virtual {v9, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_11
    const-string v9, "<this>"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "</"

    invoke-static {v3, v9, v4}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    const-string v9, "fromHtml(...)"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    :goto_b
    iget-object v9, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v10, 0x7f080620

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :try_start_0
    invoke-virtual {v2, v9}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    invoke-static {v9}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v9

    iget-object v10, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mSliceable:Lcom/android/settings/slices/CustomSliceable;

    iget-object v11, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-interface {v10, v11}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v10

    new-instance v11, Landroidx/slice/builders/SliceAction;

    invoke-direct {v11, v10, v9, v4, v6}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    new-instance v12, Landroidx/slice/builders/SliceAction;

    const-string v13, "mobile_toggle"

    invoke-direct {v12, v10, v13, v2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iput-object v6, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v4, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    invoke-virtual {v2, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    invoke-virtual {v2, v12}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)V

    iput-object v11, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iput-object v3, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v4, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    add-int/lit8 v5, v5, -0x1

    :cond_13
    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    sget-object v9, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const-class v9, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v6, v3, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    xor-int/lit8 v9, v2, 0x1

    const-string v10, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    const/high16 v9, 0xc000000

    invoke-static {v3, v4, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v9, Landroidx/slice/builders/SliceAction;

    invoke-direct {v9, v6, v8, v2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    new-instance v6, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    const v10, 0x7f14368c

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v4, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v9, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v1, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    add-int/lit8 v3, v5, -0x1

    if-nez v2, :cond_14

    const-string p0, "Wi-Fi is disabled"

    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_14
    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    if-nez v2, :cond_15

    goto :goto_d

    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_e

    :cond_16
    :goto_d
    move-object v2, v8

    :goto_e
    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_17

    goto/16 :goto_11

    :cond_17
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v6, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/settings/wifi/slice/WifiSliceItem;

    :cond_18
    if-eqz v8, :cond_19

    const-string v0, "get Wi-Fi item which is connected"

    invoke-static {v0}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    add-int/lit8 v3, v5, -0x2

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "get Wi-Fi items which are not connected. Wi-Fi items : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sub-int/2addr v3, v7

    int-to-long v2, v3

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    goto :goto_f

    :cond_1a
    const-string v0, "add See-All"

    invoke-static {v0}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f141cde

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v3, 0x7f08034f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v5, 0x1010429

    invoke-static {v3, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v2}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    goto :goto_10

    :cond_1b
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v2}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    :goto_10
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iput-object v0, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v4, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iget-object v5, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/high16 v6, 0x4000000

    invoke-static {v5, v4, p0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0, v2, v4, v0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    iput-object p0, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v1, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_11
    const-string p0, "Wi-Fi list is empty"

    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public final getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public final getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    iget v0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/settings/network/telephony/NetworkProviderWorker;->mInternetType:I

    :goto_0
    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v1, 0x1010429

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    const-string v2, "Wi-Fi level is out of range! level:"

    const-string v3, "WifiUtils"

    if-gez v1, :cond_1

    invoke-static {v1, v2, v3}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    if-lt v1, v4, :cond_2

    invoke-static {v1, v2, v3}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    :cond_2
    :goto_1
    iget-boolean p1, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldShowXLevelIcon:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    aget p1, p1, v1

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    aget p1, p1, v1

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;

    return-object p0
.end method

.method public final onNotifyChange(Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    iget-object v1, v0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "defaultSubId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ProviderModelSlice;->defaultSubscriptionIsUsable(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v3, :cond_5

    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/android/settings/network/ProviderModelSlice;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_4

    const-string v4, "PrefHasTurnedOffMobileData"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f141803

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v0, 0x7f1417f6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/network/ProviderModelSlice;->getMobileDataDisableDialog(ILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "AlertDialog is null"

    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setMobileDataEnabled: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(ILandroid/content/Context;ZZ)V

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result p1

    :goto_1
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/settings/network/ProviderModelSlice;->doCarrierNetworkAction(ZZI)V

    return-void
.end method
