.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;
    }
.end annotation


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentWifiState:I

.field private mDisabledByAdmin:Z

.field private mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConnectedState:Z

.field private final mIsGuestUser:Z

.field private mListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

.field private mListeningToOnSwitchChange:Z

.field private mMainHandler:Landroid/os/Handler;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredReceiver:Z

.field private final mRestrictionUtils:Lcom/samsung/android/settings/wifi/RestrictionUtils;

.field private mStateMachineEvent:Z

.field private final mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private final mSwitchView:Landroid/widget/Switch;

.field private final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mTextView:Landroid/widget/TextView;

.field private final mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$jQ-YJJAf7gHYuGiFSGqM5eJKcL4(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->lambda$onSwitchChanged$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$z0W2ZozFQOz8mUDHTE3BsN2Ufl4(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->lambda$notifyOnSwitchChanged$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentWifiState(Lcom/android/settings/wifi/WifiEnabler;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGateMessageManager(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentWifiState(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStateChanged(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiStateChanged(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misWifiBlocked(Lcom/android/settings/wifi/WifiEnabler;)[Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()[Z

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SecSwitchPreferenceScreen;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 141
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/preference/SecSwitchPreferenceScreen;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 147
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/preference/SecSwitchPreferenceScreen;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/preference/SecSwitchPreferenceScreen;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/net/ConnectivityManager;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x4

    .line 82
    iput v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsConnectedState:Z

    .line 99
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 164
    :cond_0
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string/jumbo p2, "wifi"

    .line 165
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 166
    iput-object p7, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 169
    iput-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 170
    iput-object p5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    .line 171
    iput-object p6, p0, Lcom/android/settings/wifi/WifiEnabler;->mTextView:Landroid/widget/TextView;

    .line 172
    new-instance p3, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    iget-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    .line 173
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string/jumbo p4, "no_config_wifi"

    invoke-virtual {p0, p4, p3}, Lcom/android/settings/wifi/WifiEnabler;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 174
    iget p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    if-ne p3, v1, :cond_1

    .line 175
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    .line 177
    :cond_1
    iget p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->initSwitch(I)V

    .line 180
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 182
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.wifi.STATE_CHANGE"

    .line 183
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    new-instance p2, Lcom/samsung/android/settings/wifi/RestrictionUtils;

    invoke-direct {p2}, Lcom/samsung/android/settings/wifi/RestrictionUtils;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mRestrictionUtils:Lcom/samsung/android/settings/wifi/RestrictionUtils;

    .line 187
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 188
    new-instance p2, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    invoke-direct {p2}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    .line 190
    :cond_2
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mMainHandler:Landroid/os/Handler;

    .line 191
    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsGuestUser:Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->setupSwitchController()V

    return-void
.end method

.method public static getEnforcedAdmin(Lcom/samsung/android/settings/wifi/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "no_config_wifi"

    .line 647
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    .line 406
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_2

    .line 407
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 409
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsConnectedState:Z

    .line 410
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 419
    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    .line 420
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 421
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsConnectedState:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    .line 333
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 334
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 329
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    :goto_0
    return-void
.end method

.method private initSwitch(I)V
    .locals 3

    .line 209
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 214
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 216
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 217
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    if-nez p1, :cond_3

    .line 221
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isWifiBlocked()[Z
    .locals 6

    .line 599
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 600
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiStateChange(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    const-string v3, "WifiEnabler"

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 602
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiBlocked: restricted by MDM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v2, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->maybeEnforceRestrictions()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsGuestUser:Z

    if-eqz v4, :cond_3

    :cond_2
    const-string v2, "isWifiBlocked: restricted by enforced admin"

    .line 607
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 611
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    :cond_4
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 616
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    .line 618
    invoke-direct {p0, v3, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    .line 619
    iget v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    move v4, v1

    goto :goto_0

    :cond_6
    move v4, v3

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    :cond_7
    :goto_1
    const/4 p0, 0x2

    new-array p0, p0, [Z

    aput-boolean v0, p0, v3

    aput-boolean v2, p0, v1

    return-object p0
.end method

.method private synthetic lambda$notifyOnSwitchChanged$0(Z)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;->onSwitchChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onSwitchChanged$1(Z)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnabled(Z)V

    return-void
.end method

.method private notifyOnSwitchChanged(Z)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/WifiEnabler;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private onSwitchChanged(Z)Z
    .locals 6

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSwitchChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_b

    :cond_1
    if-eqz p1, :cond_b

    .line 465
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_3

    return v1

    .line 469
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()[Z

    move-result-object v0

    .line 470
    aget-boolean v3, v0, v2

    if-eqz v3, :cond_4

    aget-boolean v3, v0, v1

    if-nez v3, :cond_4

    return v2

    .line 472
    :cond_4
    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    .line 473
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->mdm_policy_not_allow_wifi:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 475
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_5
    if-eqz p1, :cond_6

    .line 480
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-static {v0, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 481
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_in_airplane_mode:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 483
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    return v2

    .line 487
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_8

    .line 489
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_7

    const/16 v4, 0x8b

    goto :goto_0

    :cond_7
    const/16 v4, 0x8a

    .line 490
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 491
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    .line 489
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    :cond_8
    if-nez p1, :cond_9

    .line 494
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v0, :cond_9

    .line 495
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_sharing_lite_popup_status"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 497
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    if-eqz p1, :cond_a

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isNeedToConfirmApDisable()Z

    move-result v0

    if-eqz v0, :cond_a

    xor-int/2addr p1, v1

    .line 500
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 501
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    return v2

    .line 505
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->notifyOnSwitchChanged(Z)V

    .line 506
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiEnabler;Z)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_b
    return v2
.end method

.method private setSwitchBarChecked(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 362
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 364
    invoke-virtual {v0, p1}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const/4 v0, 0x0

    .line 366
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsConnectedState:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 369
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown ssid>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 373
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    .line 381
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_4
    const/4 p1, 0x0

    .line 384
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    return-void
.end method

.method private setSwitchBarEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 570
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    return-void
.end method

.method private setSwitchBarEnabled(ZZ)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :cond_0
    if-eqz p2, :cond_2

    .line 526
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p2, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->isDisabledByAdmin()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 531
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 532
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "no_config_wifi"

    .line 531
    invoke-static {p2, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 533
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 535
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 538
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz p2, :cond_3

    .line 539
    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 541
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    .line 542
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private setWifiEnabled(Z)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 515
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    const/4 v0, 0x1

    .line 516
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    xor-int/2addr p1, v0

    .line 517
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->notifyOnSwitchChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;I)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 547
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mDisabledByAdmin:Z

    return p0
.end method

.method public isSwitchBarChecked()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result p0

    return p0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0

    .line 348
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz p0, :cond_2

    .line 349
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method maybeEnforceRestrictions()Z
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRestrictionUtils:Lcom/samsung/android/settings/wifi/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->getEnforcedAdmin(Lcom/samsung/android/settings/wifi/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 634
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p0, :cond_0

    .line 635
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-eqz v0, :cond_0

    const-string p0, "WifiEnabler"

    const-string/jumbo v1, "maybeEnforceRestrictions: restricted by enforced admin"

    .line 637
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 447
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 452
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0xbbd

    .line 453
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "0102"

    invoke-static {p2, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 455
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    move-result p0

    return p0
.end method

.method public onSwitchToggled(Z)Z
    .locals 4

    .line 430
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "WIFI_100"

    const-string v3, "0102"

    .line 436
    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 440
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 2

    const-string v0, "WifiEnabler"

    const-string/jumbo v1, "pause"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz p0, :cond_1

    .line 312
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "WifiEnabler"

    const-string/jumbo v1, "resume"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 279
    iget v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 552
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mDisabledByAdmin:Z

    if-eq v0, p1, :cond_1

    .line 553
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mDisabledByAdmin:Z

    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    return-void
.end method

.method public setupSwitchController()V
    .locals 2

    .line 228
    iget v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_1

    .line 232
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    :cond_1
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 2

    const-string v0, "WifiEnabler"

    const-string/jumbo v1, "start"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "WifiEnabler"

    const-string/jumbo v1, "stop"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 299
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_1
    return-void
.end method

.method public teardownSwitchController()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_1

    .line 244
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    :cond_1
    return-void
.end method
