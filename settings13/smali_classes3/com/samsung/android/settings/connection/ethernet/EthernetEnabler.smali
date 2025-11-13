.class public Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;
.super Ljava/lang/Object;
.source "EthernetEnabler.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;
    }
.end annotation


# instance fields
.field private DevList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isEthernetConnected:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mEthConfigDialog:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

.field private mEthConfigPref:Landroidx/preference/Preference;

.field private mEthDeviceStateReceiver:Landroid/database/ContentObserver;

.field private mEthManager:Landroid/net/EthernetManager;

.field private mEthernetSettings:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

.field mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private mStartMode:I

.field public summaryUpdater:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEthManager(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpostEnableTaskFinishedUIUpdate(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/EthernetManager;Landroidx/preference/SecSwitchPreferenceScreen;Landroidx/preference/Preference;)V
    .locals 2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 70
    iput v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mStartMode:I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 265
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->summaryUpdater:Ljava/lang/Runnable;

    .line 316
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$4;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    .line 189
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    .line 190
    iput-object p3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 191
    iput-object p4, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthConfigPref:Landroidx/preference/Preference;

    .line 192
    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    .line 194
    invoke-virtual {p2}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->DevList:Ljava/util/List;

    .line 195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    move p4, p2

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->DevList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->DevList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 201
    invoke-virtual {p3, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 203
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "samsung.net.ethernet.ETH_STATE_CHANGED"

    .line 204
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 205
    iput p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mStartMode:I

    return-void
.end method

.method private handleEthSummaryIfConnectionFailsLanNotConnected()V
    .locals 3

    const-string v0, "SettingsEthEnabler"

    const-string v1, "handleEthSummaryIfConnectionFailsLanNotConnected called"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->summaryUpdater:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postEnableTaskFinishedUIUpdate(Z)V
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postEnableTaskFinishedUIUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsEthEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_0

    sget v2, Lcom/android/settings/R$string;->sec_connect_starting:I

    goto :goto_0

    .line 172
    :cond_0
    sget v2, Lcom/android/settings/R$string;->sec_eth_toggle_summary_on:I

    .line 171
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEnableTaskFinishedUIUpdate isEthernetConnected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    .line 175
    iget-object v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnableTaskFinishedUIUpdate newstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 179
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->sec_eth_toggle_summary_on:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 180
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->handleEthSummaryIfConnectionFailsLanNotConnected()V

    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->summaryUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsEthEnabler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setEthEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x3

    .line 231
    iput v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mStartMode:I

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 234
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 5

    .line 213
    iget v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mStartMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 214
    iput v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mStartMode:I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 217
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 218
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ethernet_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsEthEnabler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->updateSwitch(Ljava/lang/String;)V

    return-void
.end method

.method public setCheckBox(I)V
    .locals 1

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCheckBox  req state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsEthEnabler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConfigDialog(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthConfigDialog:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    return-void
.end method

.method public setEthEnabled(Z)V
    .locals 5

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEthEnabled enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isEthernetConnected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsEthEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 246
    iget-boolean v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 252
    new-instance v1, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask-IA;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    aput-object v4, p0, v0

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setEthernetSettings(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthernetSettings:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    return-void
.end method

.method public updateSwitch(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
