.class public Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$CHA_RESULT;
    }
.end annotation


# static fields
.field private static final CHARTER_SALES_CODE:Ljava/lang/String; = "CHA"

.field private static final CHA_GID1:Ljava/lang/String; = "BA01490000000000"

.field private static DBG:Z = false

.field private static final KEY_CHARTER_WIFI_NETWORKS:Ljava/lang/String; = "optimize_charter_wifi_networks"

.field private static final MODEL_NAME:Ljava/lang/String;

.field private static final PROVIDER_ACTION_START:Ljava/lang/String; = "content://com.spectrum.cm.ServiceProvider/start_service"

.field private static final PROVIDER_ACTION_STATUS:Ljava/lang/String; = "content://com.spectrum.cm.ServiceProvider/query_service"

.field private static final PROVIDER_ACTION_STOP:Ljava/lang/String; = "content://com.spectrum.cm.ServiceProvider/stop_service"

.field private static final PROVIDER_BASE_URL:Ljava/lang/String; = "content://com.spectrum.cm.ServiceProvider"

.field private static final QUERY_TOKEN:I = 0x0

.field private static final SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field private static final SIM_STATE_ACTION:Ljava/lang/String; = "android.telephony.action.SIM_CARD_STATE_CHANGED"

.field private static final SIM_STATE_KEY:Ljava/lang/String; = "ss"

.field private static final TAG:Ljava/lang/String; = "CharterWifiController"

.field private static mIsCharterWifiNotSupported:Z


# instance fields
.field private mCharterSwitch:Landroidx/preference/SecSwitchPreference;

.field private mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsAvailable:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$menableCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->enableCharterSetting(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misSimAbsent(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->isSimAbsent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->setCharterSetting(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmIsCharterWifiNotSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsCharterWifiNotSupported:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->DBG:Z

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->MODEL_NAME:Ljava/lang/String;

    const-string v1, "U1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsCharterWifiNotSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;-><init>(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "salesCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CharterWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mIsCharterWifiNotSupported  : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsCharterWifiNotSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CHA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsCharterWifiNotSupported:Z

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsAvailable:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsAvailable:Z

    :goto_0
    return-void
.end method

.method private callContentProvider(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->enableCharterSetting(Z)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v1, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;-><init>(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enableCharterSetting(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    const-string v0, "enableCharterSetting -----> Enabled : "

    const-string v1, "CharterWifiController"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private isSimAbsent()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "BA01490000000000"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private setCharterSetting(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setCharterSetting -----> Checked : "

    const-string v1, "CharterWifiController"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "optimize_charter_wifi_networks"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsAvailable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

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

.method public onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    const-string v0, "content://com.spectrum.cm.ServiceProvider/query_service"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->callContentProvider(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
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

    const-string/jumbo v0, "setChecked isChecked : "

    const-string v1, "CharterWifiController"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "WIFI_200"

    const-string v3, "1239"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->isSimAbsent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f141b84

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "content://com.spectrum.cm.ServiceProvider/start_service"

    goto :goto_1

    :cond_2
    const-string p1, "content://com.spectrum.cm.ServiceProvider/stop_service"

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->callContentProvider(Ljava/lang/String;)V

    return v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
