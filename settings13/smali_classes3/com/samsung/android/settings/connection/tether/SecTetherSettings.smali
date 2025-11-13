.class public Lcom/samsung/android/settings/connection/tether/SecTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "SecTetherSettings.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;

.field public static sTetherChoice:I


# instance fields
.field private mBluetoothTetherController:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mEm:Landroid/net/EthernetManager;

.field private mEthernetTetherController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

.field private mFamilySharingPreferenceController:Lcom/samsung/android/settings/connection/tether/SecFamilySharingPreferenceController;

.field private mHandler:Landroid/os/Handler;

.field private mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

.field private mTm:Landroid/net/TetheringManager;

.field private mUnavailable:Z

.field private mUsbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

.field private mWifiTetherController:Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$ZIuLdBcyCneZBRWY29PN9apqRNs(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->lambda$onStart$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->updateState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->TAG:Ljava/lang/String;

    .line 319
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    .line 102
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onStart$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateState()V
    .locals 5

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    .line 224
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 226
    instance-of v2, v1, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;

    if-eqz v2, :cond_1

    .line 227
    check-cast v1, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;

    .line 228
    sget-object v2, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling updateState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {v1}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->updateController()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 197
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 107
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->sec_tether_prefs:I

    return p0

    .line 108
    :cond_1
    :goto_0
    sget p0, Lcom/android/settings/R$xml;->sec_tether_prefs_for_jpn:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 280
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 282
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROVISION Result /requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/mTetherChoice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_5

    if-eqz p3, :cond_1

    const-string v3, "TETHER_TYPE"

    .line 285
    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 286
    sget v3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    if-ne v3, v2, :cond_1

    if-ne p3, v2, :cond_0

    const/4 p3, 0x0

    .line 288
    sput p3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    goto :goto_0

    .line 290
    :cond_0
    sput p3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    .line 294
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delivery choise : "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget p3, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    if-eqz p3, :cond_4

    if-eq p3, v1, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    goto :goto_1

    .line 298
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mBluetoothTetherController:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->onActivityResult(II)V

    goto :goto_1

    .line 301
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUsbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->onActivityResult(II)V

    goto :goto_1

    .line 304
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mWifiTetherController:Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->onActivityResult(II)V

    goto :goto_1

    :cond_5
    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_6

    .line 308
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult ETHERNET_TETHER_PROVISION_REQUEST resultCode : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mEthernetTetherController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->onActivityResult(II)V

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_7

    const-string p3, "request code : TETHER_HELP_REQUEST"

    .line 311
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mWifiTetherController:Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->onActivityResult(II)V

    .line 315
    :cond_7
    :goto_1
    sput v2, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    return-void
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 116
    const-class v0, Lcom/samsung/android/settings/connection/tether/SecFamilySharingPreferenceController;

    const-class v1, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    const-class v2, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    const-class v3, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    const-class v4, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    .line 118
    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    .line 119
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecFamilySharingPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->setHost(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecFamilySharingPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mFamilySharingPreferenceController:Lcom/samsung/android/settings/connection/tether/SecFamilySharingPreferenceController;

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mWifiTetherController:Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mBluetoothTetherController:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUsbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mEthernetTetherController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 134
    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->onDataSaverChanged(Z)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const-string p1, "connectivity"

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string p1, "ethernet"

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mEm:Landroid/net/EthernetManager;

    const-string p1, "tethering"

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mTm:Landroid/net/TetheringManager;

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUnavailable:Z

    .line 144
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 146
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_config_tethering"

    .line 147
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 149
    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p0, -0x1

    .line 157
    sput p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 245
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 246
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "com.samsung.helphub"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 247
    sget p0, Lcom/android/settings/R$menu;->sec_tethering_help_menu:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 5

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    .line 203
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 205
    instance-of v2, v1, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;

    if-eqz v2, :cond_1

    .line 206
    check-cast v1, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;

    .line 207
    sget-object v2, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling DataSaver Changed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-interface {v1, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->onDataSaverChanged(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 192
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->tethering_help_menu:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 255
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p1

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.helphub"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 259
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "tethering"

    if-eqz v0, :cond_2

    .line 260
    :try_start_1
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const-string v0, "VZW"

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "helphub:section"

    if-nez v0, :cond_1

    :try_start_2
    const-string v0, "VPP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "tethering_vzw"

    .line 262
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 267
    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 p1, p1, 0xa

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "helphub:appid"

    .line 268
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 272
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return v1
.end method

.method public onStart()V
    .locals 3

    .line 162
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->tethering_settings_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 171
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback;-><init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;Lcom/samsung/android/settings/connection/tether/SecTetherSettings$TetheringEventCallback-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mTm:Landroid/net/TetheringManager;

    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->updateState()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 179
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 180
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mTm:Landroid/net/TetheringManager;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    return-void
.end method
