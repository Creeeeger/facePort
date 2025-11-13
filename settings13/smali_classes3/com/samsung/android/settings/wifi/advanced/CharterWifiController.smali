.class public Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "CharterWifiController.java"

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
.method static bridge synthetic -$$Nest$menableCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->enableCharterSetting(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misSimAbsent(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->isSimAbsent()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->setCharterSetting(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmIsCharterWifiNotSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsCharterWifiNotSupported:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->DBG:Z

    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisableCharterMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsCharterWifiNotSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 59
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsAvailable:Z

    .line 125
    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;-><init>(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    .line 90
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "salesCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CharterWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCharterWifiNotSupported  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsCharterWifiNotSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CHA"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsCharterWifiNotSupported:Z

    if-nez p1, :cond_0

    .line 96
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsAvailable:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mIsAvailable:Z

    :goto_0
    return-void
.end method

.method private callContentProvider(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->enableCharterSetting(Z)V

    .line 190
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 191
    new-instance v1, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$2;-><init>(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 223
    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enableCharterSetting(Z)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCharterSetting -----> Enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CharterWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private isSimAbsent()Z
    .locals 2

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 179
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 180
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BA01490000000000"

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

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCharterSetting -----> Checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CharterWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "optimize_charter_wifi_networks"

    .line 147
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 104
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

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

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

.method public onDestroy()V
    .locals 1

    .line 252
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mCharterSwitch:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    const-string v0, "content://com.spectrum.cm.ServiceProvider/query_service"

    .line 110
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->callContentProvider(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked isChecked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CharterWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "WIFI_200"

    const-string v3, "1239"

    .line 161
    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->isSimAbsent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->optimize_charter_no_sim_message:I

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "content://com.spectrum.cm.ServiceProvider/start_service"

    goto :goto_1

    :cond_2
    const-string p1, "content://com.spectrum.cm.ServiceProvider/stop_service"

    .line 170
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->callContentProvider(Ljava/lang/String;)V

    return v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
