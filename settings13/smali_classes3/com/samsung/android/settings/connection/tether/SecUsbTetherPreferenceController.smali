.class public Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecUsbTetherPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;,
        Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;
    }
.end annotation


# static fields
.field private static final DIALOG_USB_TETHER_FIRST_USE:I = 0x4

.field private static final DIALOG_USB_TETHER_HELP:I = 0x5

.field private static final DIALOG_USB_TETHER_NO_SIM:I = 0x2

.field private static final DIALOG_USB_TETHER_USCC:I = 0x1

.field private static final DIALOG_USB_TETHER_WARNING_WIFI_CALLING:I = 0x3

.field private static final PREF_DNS_FIRST_USB_TETHER_DIALOG:Ljava/lang/String; = "pref_dns_first_usb_tether_dialog"

.field private static final TAG:Ljava/lang/String; = "SecUsbTetherPreferenceController"

.field private static final TETHER_SHARED_PREF_NAME:Ljava/lang/String; = "TetherPref"


# instance fields
.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

.field private mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

.field private mMassStorageActive:Z

.field private mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field private mTm:Landroid/net/TetheringManager;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTetherReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMassStorageActive(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->removeDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->showDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "tethering"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    return-void
.end method

.method private isWifiConnected()Z
    .locals 2

    .line 505
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 506
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 509
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 513
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method private removeDialog(I)V
    .locals 3

    .line 497
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 p1, 0x0

    .line 501
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    return-void
.end method

.method private showDialog(I)V
    .locals 3

    .line 492
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->show(Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;I)Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 377
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 8

    .line 442
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 443
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "persist.sys.tether_data"

    const/4 v5, -0x1

    .line 445
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTetheredData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    if-ge v3, v6, :cond_1

    move p0, v1

    :cond_1
    const-string v3, "persist.sys.tether_data_usb"

    .line 451
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, p0

    .line 461
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    .line 462
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    const/4 p0, 0x4

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
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(II)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startTethering()V

    goto :goto_0

    .line 356
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string p2, "USB Tethering on failed by Provision result"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tethering_provisioning_fail:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 361
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 99
    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverEnabled:Z

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 470
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    .line 471
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 475
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 487
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    if-eqz p0, :cond_1

    .line 488
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 6

    .line 388
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xd70

    invoke-static {v1, v2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 391
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    .line 393
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    const-string p1, "TetherSettings"

    const-string v0, "Internet Sharing is restricted by MDM."

    .line 396
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 398
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x104045a

    .line 399
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 400
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_0
    const-string v1, "TMB"

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ASR"

    if-nez v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "VZW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "VPP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 406
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    .line 407
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "SIM is Not Ready"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x2

    .line 409
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->showDialog(I)V

    return v2

    :cond_2
    if-eqz p1, :cond_8

    const-string v3, "USC"

    .line 416
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 417
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->showDialog(I)V

    goto :goto_1

    .line 418
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 428
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 429
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "isWifiConnected: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->setUsbTethering(Z)V

    goto :goto_1

    .line 432
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    goto :goto_1

    .line 419
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "TetherPref"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_dns_first_usb_tether_dialog"

    .line 421
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 423
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.tetheringprovision"

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x4

    .line 424
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->showDialog(I)V

    goto :goto_1

    .line 426
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    goto :goto_1

    .line 435
    :cond_8
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->setUsbTethering(Z)V

    :goto_1
    return v2
.end method

.method public setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-void
.end method

.method public setUsbTethering(Z)V
    .locals 7

    .line 327
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v1, p1}, Landroid/net/TetheringManager;->setUsbTethering(Z)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "setUsbTethering : usb tethring error"

    .line 330
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->usb_tethering_errored_subtext:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 332
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_tethering_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    .line 336
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usbTetherEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, p1, :cond_3

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_3

    .line 341
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "enable_mtp_settings"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method public bridge synthetic startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    return-void
.end method

.method public startTethering()V
    .locals 1

    const/4 v0, 0x1

    .line 348
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->setUsbTethering(Z)V

    return-void
.end method

.method public updateController()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v2}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public updateController([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 182
    iget-object v4, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isUsbTetheringEnabledByMdm(Landroid/content/Context;)Z

    move-result v4

    .line 183
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 185
    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, "USB Tethering is disabled by MDM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 187
    iget-object v0, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 191
    :cond_0
    iget-boolean v4, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbConnected:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 195
    :goto_0
    array-length v8, v1

    move v9, v6

    move v10, v9

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v11, v1, v9

    .line 196
    iget-object v12, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v12

    move v14, v6

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v15, v12, v14

    .line 197
    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-nez v10, :cond_2

    .line 199
    iget-object v10, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v10, v11}, Landroid/net/TetheringManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 207
    :cond_4
    array-length v1, v2

    move v8, v6

    move v9, v8

    move v11, v9

    :goto_3
    if-ge v8, v1, :cond_a

    aget-object v12, v2, v8

    .line 208
    iget-object v13, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    array-length v14, v13

    move v15, v6

    :goto_4
    if-ge v15, v14, :cond_9

    aget-object v7, v13, v15

    .line 210
    invoke-virtual {v12, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v6, "usb"

    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v12, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "rndis"

    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 211
    :cond_6
    sget-object v6, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v1

    const-string v1, "regx :"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto :goto_5

    :cond_7
    move/from16 p1, v1

    .line 213
    invoke-virtual {v12, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ncm"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v9, 0x1

    :cond_8
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    move/from16 p1, v1

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto :goto_3

    .line 224
    :cond_a
    array-length v1, v3

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v2, v1, :cond_d

    aget-object v7, v3, v2

    .line 225
    iget-object v8, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    array-length v12, v8

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_c

    aget-object v14, v8, v13

    .line 226
    invoke-virtual {v7, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v6, 0x1

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 230
    :cond_d
    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mUsbConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mMassStorageActive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", usbTethered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", usbErrored : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ncmEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_tethering_enabled"

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_e

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    .line 235
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUsbState usbTetheringEnableValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mDataSaverEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ASR"

    const-string v8, "TMB"

    if-eqz v11, :cond_14

    if-nez v2, :cond_f

    .line 240
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "USB tethering is already turned ON , but value didn\'t update yet "

    .line 241
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_f
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_a

    .line 252
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 253
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_active_subtext_tablet:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_9

    .line 255
    :cond_11
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_active_subtext:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 258
    :goto_9
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-boolean v3, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverEnabled:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_12
    const/4 v3, 0x1

    goto :goto_b

    .line 246
    :cond_13
    :goto_a
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 247
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_12

    .line 248
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_active_subtext_tmo:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 249
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 260
    :goto_b
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_10

    :cond_14
    const-string v11, "TMK"

    if-eqz v4, :cond_1c

    if-eqz v2, :cond_15

    .line 264
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "1: USB tethering condition value is not synced with real condition So make it sync !"

    .line 265
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    if-nez v10, :cond_19

    if-nez v9, :cond_1a

    .line 269
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_c

    .line 271
    :cond_16
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 272
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_available_subtext_tablet:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_d

    .line 274
    :cond_17
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_available_subtext:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_d

    .line 270
    :cond_18
    :goto_c
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_available_subtext_tmo:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_d

    .line 278
    :cond_19
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_errored_subtext:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1a
    :goto_d
    if-nez v9, :cond_1b

    .line 281
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-boolean v3, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverEnabled:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 282
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_10

    :cond_1b
    const/4 v4, 0x0

    .line 284
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 285
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 286
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_disabled_ncm_subtext:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    :cond_1c
    const/4 v4, 0x0

    if-eqz v6, :cond_1e

    if-eqz v2, :cond_1d

    .line 290
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "2: USB tethering condition value is not synced with real condition So make it sync !"

    .line 291
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_1d
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_errored_subtext:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 294
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 295
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_10

    .line 296
    :cond_1e
    iget-boolean v6, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    if-eqz v6, :cond_20

    if-eqz v2, :cond_1f

    .line 298
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "3: USB tethering condition value is not synced with real condition So make it sync !"

    .line 299
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1f
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_storage_active_subtext:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 302
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 303
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_10

    :cond_20
    if-eqz v2, :cond_21

    .line 306
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "4 : USB tethering condition value is not synced with real condition So make it sync !"

    .line 307
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_21
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_e

    .line 312
    :cond_22
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_unavailable_subtext:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_f

    .line 310
    :cond_23
    :goto_e
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->usb_tethering_unavailable_subtext_tmo:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 315
    :goto_f
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 316
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 319
    :goto_10
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_24

    const-string v3, "USB tethering condition is in enforcedAdmin"

    .line 321
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_24
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 367
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
