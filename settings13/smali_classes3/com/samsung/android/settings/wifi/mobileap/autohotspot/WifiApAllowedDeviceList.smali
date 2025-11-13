.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedDeviceList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$SortWifiApBleScanList;
    }
.end annotation


# static fields
.field private static final MHSDBG:Z

.field private static TAG:Ljava/lang/String; = "WifiApAllowedDeviceList"


# instance fields
.field private final MSG_DISPLAY_TOAST_FAILED:I

.field private final MSG_FETCH_SCAN_RESULT:I

.field private final MSG_REMOVE_FROM_PREF:I

.field private mActivity:Landroid/app/Activity;

.field private mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanResultDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private progressBarItem:Landroid/view/MenuItem;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowedDeviceListPreferenceCategory(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Landroidx/preference/SecPreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiApSmartCallback(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckIfAnyPreferenceIsConnecting(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->checkIfAnyPreferenceIsConnecting()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfindPreferenceFromAllowedList(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->findPreferenceFromAllowedList(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowAllowedListPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->showAllowedListPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScanningDevices(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->startScanningDevices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopScanningDevices(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->stopScanningDevices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->MHSDBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->MHSDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    .line 83
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 84
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->MSG_DISPLAY_TOAST_FAILED:I

    const/4 v0, 0x3

    .line 85
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->MSG_FETCH_SCAN_RESULT:I

    const/4 v0, 0x4

    .line 86
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->MSG_REMOVE_FROM_PREF:I

    .line 88
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 158
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    .line 211
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkIfAnyPreferenceIsConnecting()Z
    .locals 10

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 198
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 199
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v6

    .line 200
    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfAnyPreferenceIsConnecting() - Processing ssid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", connectionState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v6, v4, :cond_0

    .line 202
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfAnyPreferenceIsConnecting() - ssid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already in connecting state. State: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v0, "checkIfAnyPreferenceIsConnecting() - no other preference is in connecting state"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catchall_0
    move-exception p0

    .line 206
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 3

    .line 392
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeHeaderView()V

    .line 397
    sget v1, Lcom/android/settings/R$xml;->sec_wifi_ap_auto_hotspot_allowed_device_list:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v1, "allowed_device_list_category"

    .line 398
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    const/4 v2, 0x3

    .line 399
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 401
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    return-object v0
.end method

.method private findPreferenceFromAllowedList(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 3

    .line 244
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->MHSDBG:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findPreferenceFromAllowedList() - mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 249
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findPreferenceFromAllowedList() - found preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_1
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v0, "findPreferenceFromAllowedList() - preference not found "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private showAllowedListPreference()V
    .locals 5

    .line 344
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "showAllowedListPreference() : Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 346
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 348
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAllowedListPreference() - Before sort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$SortWifiApBleScanList;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$SortWifiApBleScanList;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V

    .line 351
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 353
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAllowedListPreference() - After sort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->updateAllowedDevicePreferenceList(Ljava/util/List;)V

    goto :goto_2

    .line 357
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->showEmptyScreenPreference()V

    :goto_2
    return-void
.end method

.method private showEmptyScreenPreference()V
    .locals 2

    .line 406
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "showEmptyScreenPreference() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method private startScanningDevices()V
    .locals 2

    .line 362
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "startScanningDevices() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleD2DMhsRole(Z)Z

    return-void
.end method

.method private stopScanningDevices()V
    .locals 2

    .line 367
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "stopScanningDevices() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleD2DMhsRole(Z)Z

    return-void
.end method

.method private updateAllowedDevicePreferenceList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;)V"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    monitor-enter v0

    .line 412
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllowedDevicePreferenceList() - Triggered, Number of devices received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 418
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 419
    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-direct {v4, v5, v3, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApBleScanResult;Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;)V

    .line 420
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v6, v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/wifi/SemWifiManager;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v5

    .line 421
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAllowedDevicePreferenceList() - tempDevice status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-gez v5, :cond_0

    .line 423
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->setEnabled(Z)V

    .line 424
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    if-lt v5, v7, :cond_1

    .line 427
    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->setEnabled(Z)V

    .line 428
    sget v5, Lcom/android/settings/R$string;->smart_tethering_ap_connecting_summary:I

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    .line 430
    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->setEnabled(Z)V

    .line 431
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v5

    iget-object v6, v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 434
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v5

    iget-object v3, v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAllowedDevicePreferenceList() - Device name is modified already to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 438
    :cond_3
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v5, "updateAllowedDevicePreferenceList() - Device name is not modified from add allowed list section"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v2, 0x1

    .line 441
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setOrder(I)V

    move v2, v3

    goto/16 :goto_0

    .line 443
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 273
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 275
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.d2dClientUpdate"

    .line 276
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 282
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 283
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 284
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 285
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 325
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string p1, "DialogInterface onClick() - Start"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 258
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mActivity:Landroid/app/Activity;

    .line 261
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mContext:Landroid/content/Context;

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 373
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->progressBarItem:Landroid/view/MenuItem;

    const/4 v2, 0x2

    .line 375
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->progressBarItem:Landroid/view/MenuItem;

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_add_allowed_device_progressbar:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 378
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 267
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 319
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 460
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 383
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 305
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onPause() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 307
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 388
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 297
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onResume() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->showAllowedListPreference()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 290
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onStart() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->startScanningDevices()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 312
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onStop() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->stopScanningDevices()V

    .line 314
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method
