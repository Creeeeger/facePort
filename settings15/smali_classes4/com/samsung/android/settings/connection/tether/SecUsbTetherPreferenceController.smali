.class public Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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
        Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;
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
.method public static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmMassStorageActive(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->removeDialog(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->showDialog(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "tethering"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    return-void
.end method

.method private isWifiConnected()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method private removeDialog(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "remove msg : "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->dialogId:I

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    return-void
.end method

.method private showDialog(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show msg : "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fragment is not ready"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sput-object p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    invoke-direct {v1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "dialog_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v0, "usb_tether_dialog"

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    return-void
.end method

.method private startUsbTethering(Z)V
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbTethering : "

    invoke-static {v1, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v1, p1}, Landroid/net/TetheringManager;->setUsbTethering(Z)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo p1, "setUsbTethering : usb tethring error"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v0, 0x7f1430ac

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "usb_tethering_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string/jumbo v5, "usbTetherEnabled : "

    invoke-static {v5, v0, v1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

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

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "enable_mtp_settings"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 7

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

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "usbAvailable : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "persist.sys.tether_data"

    const/4 v5, -0x1

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "mTetheredData : "

    invoke-static {v3, v6, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    if-ge v3, v6, :cond_1

    move p0, v1

    :cond_1
    const-string/jumbo v3, "persist.sys.tether_data_usb"

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

    :goto_1
    invoke-static {v4, v2, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

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

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

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
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

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

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startUsbTethering(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string p2, "USB Tethering on failed by Provision result"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f142ef4

    invoke-static {p1, v0, p1, p2}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

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

    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverEnabled:Z

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

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

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    const-string/jumbo v0, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDialog:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x5a

    const/16 v2, 0xd70

    invoke-static {v1, v2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    const-string p1, "TetherSettings"

    const-string v0, "Internet Sharing is restricted by MDM."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x1040490

    invoke-static {p0, p1, p0, v2}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    return v2

    :cond_0
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasActiveSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "SIM is Not Ready"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Landroid/net/TetheringManager;->stopTethering(I)V

    :cond_2
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->showDialog(I)V

    return v2

    :cond_3
    if-eqz p1, :cond_9

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->showDialog(I)V

    goto :goto_1

    :cond_4
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ASR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "isWifiConnected: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startUsbTethering(Z)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "TetherPref"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v0, "pref_dns_first_usb_tether_dialog"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.tetheringprovision"

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->showDialog(I)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startUsbTethering(Z)V

    :goto_1
    return v2
.end method

.method public setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

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

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startUsbTethering(Z)V

    return-void
.end method

.method public updateController()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateController Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v2}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public updateController([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSatelliteNetworksOn(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, "Tethering is disabled by UsingNonTerrestrialNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v5, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v8, "isUsbTetheringEnabled"

    invoke-static {v5, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    sget-object v7, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_2

    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, "USB Tethering is disabled by MDM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_2
    iget-boolean v5, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbConnected:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    array-length v8, v1

    move v9, v6

    move v10, v9

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v11, v1, v9

    iget-object v12, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v12

    move v14, v6

    :goto_3
    if-ge v14, v13, :cond_5

    aget-object v15, v12, v14

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-nez v10, :cond_4

    iget-object v10, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v10, v11}, Landroid/net/TetheringManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    :cond_4
    add-int/2addr v14, v4

    goto :goto_3

    :cond_5
    add-int/2addr v9, v4

    goto :goto_2

    :cond_6
    array-length v1, v2

    move v8, v6

    move v9, v8

    move v11, v9

    :goto_4
    if-ge v8, v1, :cond_c

    aget-object v12, v2, v8

    iget-object v13, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    array-length v14, v13

    move v15, v6

    :goto_5
    if-ge v15, v14, :cond_b

    aget-object v6, v13, v15

    invoke-virtual {v12, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string/jumbo v4, "usb"

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    invoke-virtual {v12, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "rndis"

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    sget-object v4, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "regx :"

    invoke-static {v11, v6, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v12, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "ncm"

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x1

    :goto_6
    add-int/2addr v15, v4

    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    add-int/2addr v8, v4

    const/4 v6, 0x0

    goto :goto_4

    :cond_c
    array-length v1, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v4, v1, :cond_f

    aget-object v8, v3, v4

    iget-object v12, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v13, :cond_e

    aget-object v15, v12, v14

    invoke-virtual {v8, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v6, 0x1

    :cond_d
    const/4 v15, 0x1

    add-int/2addr v14, v15

    goto :goto_8

    :cond_e
    const/4 v15, 0x1

    add-int/2addr v4, v15

    goto :goto_7

    :cond_f
    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "usbAvailable : "

    const-string v4, ", mUsbConnected : "

    invoke-static {v3, v4, v5}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mMassStorageActive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "usbError : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", usbTethered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", usbErrored : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", ncmEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UsbRegexs : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mUsbRegexs:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", tethered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "usb_tethering_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    const/4 v2, 0x1

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    const-string/jumbo v4, "updateUsbState usbTetheringEnableValue : "

    const-string v8, ", mDataSaverEnabled : "

    invoke-static {v4, v8, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverEnabled:Z

    invoke-static {v4, v8, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "ASR"

    const-string v8, "TMB"

    if-eqz v11, :cond_15

    if-nez v2, :cond_11

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "USB tethering is already turned ON , but value didn\'t update yet "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const/4 v4, 0x1

    goto :goto_b

    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430a4    # 1.969783E38f

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_a

    :cond_14
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430a3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_a
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-boolean v3, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverEnabled:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_c

    :goto_b
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430a5

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :goto_c
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_11

    :cond_15
    const v11, 0x7f1430ac

    const-string v12, "TMK"

    if-eqz v5, :cond_1d

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "1: USB tethering condition value is not synced with real condition So make it sync !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-nez v10, :cond_1a

    if-nez v9, :cond_1b

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_d

    :cond_17
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430a7

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_e

    :cond_18
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430a6

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_e

    :cond_19
    :goto_d
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430a8

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_e

    :cond_1a
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v11}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1b
    :goto_e
    if-nez v9, :cond_1c

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-boolean v3, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mDataSaverEnabled:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_11

    :cond_1c
    const/4 v5, 0x0

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430ab

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_11

    :cond_1d
    const/4 v5, 0x0

    if-eqz v6, :cond_1f

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "2: USB tethering condition value is not synced with real condition So make it sync !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v11}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_11

    :cond_1f
    iget-boolean v6, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mMassStorageActive:Z

    if-eqz v6, :cond_21

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "3: USB tethering condition value is not synced with real condition So make it sync !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430ad

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_11

    :cond_21
    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "4 : USB tethering condition value is not synced with real condition So make it sync !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_f

    :cond_23
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430af

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_10

    :cond_24
    :goto_f
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v3, 0x7f1430b0

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_10
    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string/jumbo v2, "setDisable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_25

    const-string v3, "USB tethering condition is in enforcedAdmin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_25
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
