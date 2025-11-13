.class public final Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContentObserver:Lcom/android/settings/wifi/WifiEnabler$2;

.field public mContext:Landroid/content/Context;

.field public mCurrentWifiState:I

.field public mDisabledByAdmin:Z

.field public final mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mIsConnectedState:Z

.field public final mIsGuestUser:Z

.field public mIsWifiBlocked:Z

.field public mIsWifiStateBlocked:Z

.field public mListener:Lcom/android/settings/wifi/WifiSettings$6;

.field public mListeningToOnSwitchChange:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public final mReceiver:Lcom/android/settings/wifi/WifiEnabler$1;

.field public mRegisteredReceiver:Z

.field public final mRestrictionUtils:Lcom/samsung/android/settings/wifi/RestrictionUtils;

.field public mStateMachineEvent:Z

.field public final mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field public final mSwitchView:Landroid/widget/Switch;

.field public final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

.field public final mTextView:Landroid/widget/TextView;

.field public final mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static -$$Nest$mhandleStateChanged(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleStateChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_3

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, ""

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsConnectedState:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<unknown ssid>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsConnectedState:Z

    :cond_3
    :goto_1
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

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/preference/SecSwitchPreferenceScreen;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/preference/SecSwitchPreferenceScreen;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/net/ConnectivityManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x0

    iput-boolean p7, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    iput-boolean p7, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    iput-boolean p7, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsConnectedState:Z

    iput-boolean p7, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    iput-boolean p7, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Lcom/android/settings/wifi/WifiEnabler$1;

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContentObserver:Lcom/android/settings/wifi/WifiEnabler$2;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p2, :cond_0

    iput-object p0, p2, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    :cond_0
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string p3, "wifi"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    iput-object p6, p0, Lcom/android/settings/wifi/WifiEnabler;->mTextView:Landroid/widget/TextView;

    new-instance p4, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    iget-object p5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p4, p5}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p4

    iget-object p5, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string p6, "no_config_wifi"

    invoke-static {p5, p4, p6}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p4

    const/4 p5, 0x1

    if-eqz p4, :cond_1

    move p4, p5

    goto :goto_0

    :cond_1
    move p4, p7

    :goto_0
    iget-boolean p6, p0, Lcom/android/settings/wifi/WifiEnabler;->mDisabledByAdmin:Z

    if-eq p6, p4, :cond_2

    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mDisabledByAdmin:Z

    :cond_2
    iget p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    if-ne p4, v0, :cond_3

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p3

    iput p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    :cond_3
    iget p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    iget-boolean p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    if-eqz p4, :cond_4

    goto :goto_1

    :cond_4
    const/4 p4, 0x3

    if-ne p3, p4, :cond_5

    invoke-virtual {p0, p5}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    goto :goto_1

    :cond_5
    const/4 p4, 0x2

    if-ne p3, p4, :cond_6

    invoke-virtual {p0, p5}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    invoke-virtual {p0, p7, p5}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p7}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    if-nez p3, :cond_7

    invoke-virtual {p0, p7, p5}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    :cond_7
    :goto_1
    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance p3, Lcom/samsung/android/settings/wifi/RestrictionUtils;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mRestrictionUtils:Lcom/samsung/android/settings/wifi/RestrictionUtils;

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p3, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-object p4, p3, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    :cond_8
    new-instance p3, Landroid/os/Handler;

    iget-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mMainHandler:Landroid/os/Handler;

    sget-object p3, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string p3, "user"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isGuestUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsGuestUser:Z

    iget p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    if-eqz p2, :cond_a

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez p1, :cond_9

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_9
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    :cond_a
    return-void
.end method


# virtual methods
.method public final handleWifiStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    :goto_0
    return-void
.end method

.method public maybeEnforceRestrictions()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRestrictionUtils:Lcom/samsung/android/settings/wifi/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "no_config_wifi"

    invoke-static {v1, v0, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-eqz v0, :cond_1

    const-string p0, "WifiEnabler"

    const-string v1, "maybeEnforceRestrictions: restricted by enforced admin"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0xbbd

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "0102"

    invoke-static {v0, v1, p2, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    move-result p0

    return p0
.end method

.method public final onSwitchChanged(Z)Z
    .locals 6

    const-string v0, "onSwitchChanged : "

    const-string v1, "WifiEnabler"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    :cond_1
    if-eqz p1, :cond_e

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    if-nez v0, :cond_4

    return v3

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const p1, 0x7f14175b

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_5
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v0, 0x7f1435a1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    return v3

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_9

    const/16 v4, 0x8b

    goto :goto_1

    :cond_9
    const/16 v4, 0x8a

    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    :cond_a
    if-nez p1, :cond_b

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sharing_lite_popup_status"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isNeedToConfirmApDisable()Z

    move-result v0

    if-eqz v0, :cond_c

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    invoke-virtual {p0, v2, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    return v3

    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p1, v3}, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiEnabler;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiEnabler;ZI)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_e
    return v3
.end method

.method public final onSwitchToggled(Z)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const-string v3, "WIFI_100"

    const-string v4, "0102"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    move-result p0

    return p0
.end method

.method public final pause()V
    .locals 2

    const-string v0, "WifiEnabler"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContentObserver:Lcom/android/settings/wifi/WifiEnabler$2;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final resume()V
    .locals 9

    const-string v0, "WifiEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "satellite_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "satellite mode key does not exist in Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mContentObserver:Lcom/android/settings/wifi/WifiEnabler$2;

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v4, "isWifiEnabled"

    const/4 v5, 0x0

    const-string v6, "false"

    invoke-static {v1, v3, v4, v5, v6}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v3, "WifiDevicePolicyManager"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const-string v1, "isAllowedWifiEnabled false"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    xor-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v8, "isWifiStateChangeAllowed"

    invoke-static {v1, v7, v8, v5, v6}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "isAllowedWifiStateChange false"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    xor-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isWifiBlocked: restricted by MDM "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    invoke-static {v1, v3, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->maybeEnforceRestrictions()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsGuestUser:Z

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "isWifiBlocked: restricted by enforced admin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, v2, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    iget v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    move v2, v4

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    :cond_a
    :goto_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mCurrentWifiState:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_d
    return-void
.end method

.method public final setSwitchBarChecked$2(Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsConnectedState:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    return-void
.end method

.method public final setSwitchBarEnabled(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiStateBlocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiBlocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :cond_2
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p2, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mDisabledByAdmin:Z

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v0, "no_config_wifi"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p2, v2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-boolean p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mDisabledByAdmin:Z

    if-eq p2, v1, :cond_5

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mDisabledByAdmin:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public final stop()V
    .locals 3

    const-string v0, "WifiEnabler"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_1
    return-void
.end method
