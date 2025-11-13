.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static TAG:Ljava/lang/String;

.field private static final WIFIAP_SWITCH_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final TETHER_HELP_REQUEST:I

.field private customView:Landroid/view/View;

.field private dataLimitMsg:Landroid/widget/TextView;

.field private isWifiWarningDoNotShowAgain:Z

.field private final mAOSPWifiManager:Landroid/net/wifi/WifiManager;

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mCb:Landroid/widget/CheckBox;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataLimitChangeLimitButton:Landroid/widget/Button;

.field private mDataLimitDialog:Landroid/app/AlertDialog;

.field private mDataLimitEditErrorTextView:Landroid/widget/TextView;

.field private mDataLimitEditText:Landroid/widget/EditText;

.field private mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

.field final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

.field private final mTetheringProvisionApp:Ljava/lang/String;

.field private mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;

.field private mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private nevershowagain:Z

.field private waitingForConfigurationSet:Z

.field private waitingForWifiDisable:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAOSPWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCb(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimitEditErrorTextView(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimitEditText(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiDisableWarnDoNotShowAgain(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwaitingForWifiDisable(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwaitingForWifiDisable(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuttonValidate(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->buttonValidate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFirstTimeConfigureAndProceedFurthur(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkFirstTimeConfigureAndProceedFurthur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFirstTimeWiFiSharingDialogAndProceedFurthur(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkFirstTimeWiFiSharingDialogAndProceedFurthur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckLowBatteryAndProceedFurther(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkLowBatteryAndProceedFurther()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiApStateChanged(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misJdmModel(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isJdmModel()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mputBooleanSharedPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowProgress(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartProvisioningIfNecessary(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMHSSwitch(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 107
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    .line 108
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->WIFIAP_SWITCH_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/preference/SecSwitchPreferenceScreen;)V
    .locals 3

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    .line 126
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 130
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    const/4 v1, 0x1

    .line 131
    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TETHER_HELP_REQUEST:I

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    .line 260
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1738
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$52;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$52;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

    .line 205
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WifiApSwitchEnabler SecTetherSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Landroid/app/Activity;

    .line 207
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    .line 209
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 211
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 212
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    .line 215
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    .line 126
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 130
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    const/4 v1, 0x1

    .line 131
    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TETHER_HELP_REQUEST:I

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    .line 260
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1738
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$52;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$52;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

    .line 190
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WifiApSwitchEnabler WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Landroid/app/Activity;

    .line 192
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 194
    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 196
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 197
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    return-void
.end method

.method private CheckWiFiConcurrencyAndProceedFurthur()V
    .locals 8

    .line 637
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "CheckWiFiConcurrencyAndProceedFurthur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualAPConfiguration()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    .line 639
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/16 v0, 0x18

    .line 640
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    .line 641
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWirelessDexEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    .line 642
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    .line 643
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSmartViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Smartview is enabled. Create dailog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    .line 645
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    .line 646
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNanEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WiFi Nan is enabled. Create dailog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x16

    .line 648
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    .line 649
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/16 v3, 0xa

    const-string v4, "WiFi P2p is connected. Create dailog"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    .line 650
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 732
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiP2pConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 733
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    .line 736
    :cond_6
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, " Wi-Fi is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    .line 651
    :cond_7
    :goto_0
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    const/4 v1, -0x1

    const/4 v6, 0x1

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_2

    .line 693
    :cond_8
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 694
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiP2pConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 695
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    .line 698
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedFrequency()I

    move-result v0

    if-eq v0, v1, :cond_d

    .line 700
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getIndoorStatus()I

    move-result v2

    .line 701
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frequency : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_a

    .line 704
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedBand(I)I

    move-result v0

    goto :goto_1

    :cond_a
    move v0, v5

    .line 706
    :goto_1
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frequency band of connected AP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi Sharing lite model. Wifi connected , indoor status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v6, :cond_b

    const/16 v0, 0x14

    .line 709
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    :cond_b
    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    const/16 v0, 0x15

    .line 711
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    .line 713
    :cond_c
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    .line 716
    :cond_d
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WiFi Sharing lite model. Wifi not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    .line 720
    :cond_e
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 721
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WiFi Sharing  model."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiP2pConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 723
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_5

    .line 726
    :cond_f
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    .line 729
    :cond_10
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "not handling in any case, it is an error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 652
    :cond_11
    :goto_2
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v3, "VZW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, 0x258

    if-eqz v0, :cond_14

    .line 653
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    .line 654
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_12

    move v0, v6

    goto :goto_3

    :cond_12
    move v0, v5

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    if-eqz v0, :cond_13

    .line 656
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi Sharing not supported/not enabled.create dailog,isWifiWarningDoNotShowAgain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    .line 660
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 662
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 663
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 664
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_13
    if-nez v0, :cond_18

    .line 672
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_5

    .line 674
    :cond_14
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v6, "TMO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v6, "NEWCO"

    .line 675
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4

    .line 690
    :cond_15
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WiFi Sharing not supported/not enabled. Create dailog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_5

    .line 676
    :cond_16
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedFrequency()I

    move-result v0

    if-eq v0, v1, :cond_17

    .line 678
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_5

    .line 680
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 681
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 682
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    :goto_5
    return-void
.end method

.method private buttonValidate()V
    .locals 5

    .line 1709
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    .line 1710
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 1711
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1712
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    .line 1713
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    cmpg-double v0, v3, v0

    if-gez v0, :cond_0

    .line 1714
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1716
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1719
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private canSIMCheckByPassed()Z
    .locals 1

    .line 496
    sget-boolean p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "vendor.wifiap.simcheck.disable"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canSkipProvisioningForWiFiSharingCase()Z
    .locals 1

    .line 843
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 845
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkFirstTimeConfigureAndProceedFurthur()V
    .locals 4

    .line 559
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "checkFirstTimeConfigureAndProceedFurthur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierTMO()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierNEWCO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isDefaultPassphraseSet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForConfigurationSet:Z

    .line 565
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 567
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "needresult"

    .line 568
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    sget v1, Lcom/android/settings/R$string;->wifi_ap_first_time_configuration:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->launchWifiApEditSettingsActivity(I)V

    move v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->CheckWiFiConcurrencyAndProceedFurthur()V

    :cond_2
    return-void
.end method

.method private checkFirstTimeWiFiSharingDialogAndProceedFurthur()V
    .locals 5

    .line 542
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "checkFirstTimeWiFiSharingDialogAndProceedFurthur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string v3, "wifi_ap_wifi_sharing"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 544
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 547
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 548
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v0, 0xe

    .line 552
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 554
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkLowBatteryAndProceedFurther()V

    :goto_0
    return-void
.end method

.method private checkIfSIMCardPresentAndProceedFurthur()V
    .locals 10

    .line 597
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "checkIfSIMCardPresentAndProceedFurthur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 600
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-le v1, v3, :cond_0

    .line 601
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 602
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    .line 603
    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "simState1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",simState2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",telephonyManager.getPhoneCount():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v5, :cond_1

    if-eq v1, v2, :cond_1

    if-eq v6, v2, :cond_1

    if-ne v6, v5, :cond_2

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 613
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    move v4, v5

    .line 621
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->canSIMCheckByPassed()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 622
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_1

    .line 624
    :cond_3
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkVZWRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_1

    .line 627
    :cond_4
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    .line 628
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_1

    .line 631
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkFirstTimeWiFiSharingDialogAndProceedFurthur()V

    :goto_1
    return-void
.end method

.method private checkLowBatteryAndProceedFurther()V
    .locals 2

    .line 588
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "checkLowBatteryAndProceedFurther"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    .line 590
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 591
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkFirstTimeConfigureAndProceedFurthur()V

    :goto_0
    return-void
.end method

.method private checkVZWRoaming()Z
    .locals 1

    .line 531
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 532
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 533
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string v0, "us"

    .line 534
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 535
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "In VZW roaming"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkifProvisioningAPKPresent()Z
    .locals 4

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 834
    aget-object v0, v0, v1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package mprov : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    sget v0, Lcom/android/settings/R$string;->noApplications:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1446
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBooleanFromSharedPreference() - strKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "MHSNoProvisionPreferences"

    const/4 v0, 0x0

    .line 1447
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1448
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 1449
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBooleanFromSharedPreference - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getWifiConnectedBand(I)I
    .locals 0

    const/16 p0, 0x96c

    if-lt p1, p0, :cond_0

    const/16 p0, 0x9b4

    if-gt p1, p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method private getWifiConnectedFrequency()I
    .locals 3

    .line 742
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    .line 743
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 744
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi Frequency is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3

    .line 283
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiAp state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 302
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    goto :goto_0

    .line 290
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    .line 291
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_0

    .line 286
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    goto :goto_0

    .line 298
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    goto :goto_0

    .line 294
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    .line 295
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDualAPConfiguration()Z
    .locals 1

    .line 527
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInternetSharingAllowed()Z
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 487
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WIFI_AP Internet Sharing is restricted by DPM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget v0, Lcom/android/settings/R$string;->wifi_ap_security_policy:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isJdmModel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isOpenWifiApAllowed()Z
    .locals 1

    .line 1437
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1438
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private isOperatorRequiresProvisioning()Z
    .locals 3

    .line 819
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "vendor.wifiap.provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "Skip isProvisioningCheck"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " provisioning app is not set in CSCfeature, operator:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 829
    array-length p0, v0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 789
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPackageExists() - targetPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 796
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 797
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 799
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 803
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 804
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageExists | package is enabled ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, p1

    goto :goto_1

    .line 807
    :cond_2
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "isPackageExists | package is not system app or not available"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v0

    goto :goto_1

    .line 811
    :catch_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method private isSmartViewEnabled()Z
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 513
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    .line 514
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiP2pConnected(Landroid/content/Context;)Z

    move-result p0

    .line 515
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartViewEnabled:p2pstatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 517
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 518
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "isSmartViewEnabled:true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 521
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "isSmartViewEnabled:false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isWifiApBlocked()Z
    .locals 7

    .line 1400
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "isWifiApBlocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 1404
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1405
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "isWifiTetheringEnabled"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1409
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "isWifiTetheringEnabled"

    .line 1410
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1415
    throw p0

    :cond_0
    const/4 v1, 0x0

    .line 1419
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1420
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM card state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->canSIMCheckByPassed()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 1422
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "SIM check can be bypassed "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1423
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->getRegion()Ljava/lang/String;

    move-result-object p0

    const-string v3, "KOR"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1424
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    if-eq p0, v2, :cond_2

    .line 1425
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    .line 1426
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "SIM card is blocked "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method private isWifiConnected()Z
    .locals 2

    .line 759
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 760
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 763
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 767
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method private isWifiSharingEnabled()Z
    .locals 2

    .line 771
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isWirelessDexEnabled()Z
    .locals 2

    .line 500
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 501
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 502
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 503
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 504
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "isWirelessDexEnabled:true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 507
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "isWirelessDexEnabled:false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private launchWifiApEditSettingsActivity(I)V
    .locals 3

    .line 579
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching WifiApEditSettings activity with title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiApEditSettingsActivity"

    .line 581
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 582
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "activity_title"

    .line 583
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1454
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putBooleanSharedPreference() - strKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "MHSNoProvisionPreferences"

    const/4 v0, 0x0

    .line 1455
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1456
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1457
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1458
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1459
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putSharedPreference - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showDatalimitReachedpopup(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V
    .locals 4

    .line 1657
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1658
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_ap_set_data_limit_dialog1:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1659
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1660
    sget v1, Lcom/android/settings/R$id;->data_limit_message_textview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dataLimitMsg:Landroid/widget/TextView;

    .line 1661
    sget v2, Lcom/android/settings/R$string;->wifi_ap_you_have_already_used_hotspot_data_today:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1662
    sget v1, Lcom/android/settings/R$id;->data_limit_edittext:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    .line 1663
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1664
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    double-to-int p2, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1665
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->selectAll()V

    .line 1666
    sget p2, Lcom/android/settings/R$id;->data_limit_edit_error_textview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    .line 1667
    sget p1, Lcom/android/settings/R$string;->wifi_ap_data_limit_reached:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1668
    sget p1, Lcom/android/settings/R$string;->wifi_ap_change_limit:I

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1683
    sget p1, Lcom/android/settings/R$string;->data_limit_cancel:I

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1690
    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$50;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$50;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1696
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$51;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$51;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1702
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitDialog:Landroid/app/AlertDialog;

    .line 1703
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1704
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitDialog:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    .line 1705
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string p2, "showhotspotdialoglimit"

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private showFirstTimePoup()V
    .locals 6

    .line 1560
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "showFirstTimePoup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1562
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_tmo_first_time_popup:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1563
    sget v2, Lcom/android/settings/R$id;->wifi_ap_do_not_show:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1564
    sget v3, Lcom/android/settings/R$id;->wifi_ap_do_not_show_again:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;

    .line 1565
    sget v3, Lcom/android/settings/R$id;->wifi_ap_tmo_first_time_popup:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1566
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->first_use_wifi_msg:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1567
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1578
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1580
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1616
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$45;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$45;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1623
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1630
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->first_use_title:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1632
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMetorPCSHelpPoup()Landroid/app/AlertDialog;
    .locals 12

    .line 1463
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "showMetorPCSHelpPoup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/TetheringManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 1465
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1466
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1468
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1474
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/16 v4, 0x5f

    const-string v5, "%z"

    const-string v6, "%y"

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    .line 1476
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "html/%y%z/tethering_help.html"

    invoke-virtual {v9, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1477
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1482
    :try_start_0
    invoke-virtual {v3, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1488
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1492
    throw p0

    :catch_0
    move v9, v10

    :catch_1
    :cond_1
    :goto_1
    const-string v3, ""

    if-eqz v2, :cond_3

    .line 1494
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v11, "html/%y%z/tethering_%xhelp.html"

    invoke-virtual {v11, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_2

    .line 1495
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v6, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v7

    :goto_3
    if-eqz v2, :cond_9

    .line 1498
    array-length v4, v1

    const-string v5, "NEWCO"

    const-string v6, "%x"

    if-eqz v4, :cond_5

    array-length v4, v0

    if-nez v4, :cond_5

    .line 1499
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "usb_mtr_"

    .line 1500
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    const-string v0, "usb_tmo_"

    .line 1502
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1504
    :cond_5
    array-length v4, v0

    if-eqz v4, :cond_6

    array-length v4, v1

    if-nez v4, :cond_6

    const-string v0, "wifi_"

    .line 1505
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1506
    :cond_6
    array-length v1, v1

    if-eqz v1, :cond_8

    array-length v0, v0

    if-eqz v0, :cond_8

    .line 1507
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "usb_wifi_mtr_"

    .line 1508
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    const-string v0, "usb_wifi_tmo_"

    .line 1510
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1513
    :cond_8
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1516
    :cond_9
    :goto_4
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering Help url : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1521
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 1523
    :goto_5
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    .line 1524
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v10, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1526
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1533
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1539
    :catch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1541
    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_dialog_first_time_tether:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1542
    sget v2, Lcom/android/settings/R$id;->dns_check_box:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/16 v3, 0x8

    .line 1543
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1545
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1546
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1549
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/android/settings/R$string;->help_label:I

    .line 1550
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1551
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$42;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$42;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1552
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1556
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :catch_3
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p0

    move-object v0, v7

    .line 1528
    :goto_6
    :try_start_5
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_b

    .line 1533
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_b
    return-object v7

    :catchall_2
    move-exception p0

    move-object v7, v0

    :goto_7
    if-eqz v7, :cond_c

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1537
    :catch_6
    :cond_c
    throw p0
.end method

.method private showProgress(Z)V
    .locals 3

    .line 440
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgress() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p1, "both switchbar and Switchpref are null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showToastMsg(I)V
    .locals 2

    .line 1649
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$47;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$47;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5

    .line 853
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isActiveNetworkisCellular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 854
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->isDataLimitReached(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "isMobileDataUsageSupported data reached dailog"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x19

    .line 856
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    return-void

    .line 859
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "startProvisioningIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isOperatorRequiresProvisioning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 861
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkifProvisioningAPKPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->canSkipProvisioningForWiFiSharingCase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto :goto_1

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    .line 866
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v4, v3, v2

    aget-object v1, v3, v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TETHER_TYPE"

    .line 868
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x800000

    .line 869
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 870
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "launching Provisioning app"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 874
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p1, "provisioning APK is not present"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 876
    :cond_3
    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v0, "TMO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v0, "NEWCO"

    .line 877
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 880
    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    const/16 p1, 0xf

    .line 878
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_1
    return-void
.end method

.method private updateMHSSwitch()V
    .locals 14

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v0

    .line 337
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMHSSwitch,wifiapstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 343
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v6, "isWifiTetheringEnabled"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 350
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 352
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KOREA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->canSIMCheckByPassed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 354
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    .line 358
    :goto_2
    new-instance v6, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v6

    .line 359
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/datausage/DataUsageUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/16 v10, 0xc

    if-nez v1, :cond_f

    if-eqz v4, :cond_f

    if-nez v5, :cond_f

    if-nez v6, :cond_f

    if-nez v7, :cond_3

    goto/16 :goto_a

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/16 v4, 0xa

    if-eqz v1, :cond_8

    if-eq v0, v10, :cond_5

    if-ne v0, v4, :cond_4

    goto :goto_3

    .line 398
    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_4

    .line 396
    :cond_5
    :goto_3
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :goto_4
    if-eq v0, v10, :cond_7

    if-ne v0, v9, :cond_6

    goto :goto_5

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 406
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_9

    .line 401
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result v0

    if-nez v0, :cond_e

    .line 402
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_9

    .line 409
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_d

    if-eq v0, v10, :cond_a

    if-ne v0, v4, :cond_9

    goto :goto_6

    .line 420
    :cond_9
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_7

    .line 418
    :cond_a
    :goto_6
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 422
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eq v0, v10, :cond_c

    if-ne v0, v9, :cond_b

    goto :goto_8

    .line 428
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 429
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    .line 424
    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_e

    .line 425
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    .line 434
    :cond_d
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "both SwitchBar and SwitchPref are null, handle WifiApState"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_9
    return-void

    .line 361
    :cond_f
    :goto_a
    sget-object v11, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isAirplaneMode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",mWifiApAllowed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v11, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isSimBlocked:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",mDataSaverEnabled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDataUsageAllowed:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v10, :cond_10

    if-ne v0, v9, :cond_12

    :cond_10
    if-eqz v1, :cond_11

    .line 366
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "wifi_ap_saved_state"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    :cond_11
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v6, "Disabling MHS, because of notallowed scenarios"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 373
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_13

    .line 374
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 375
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_c

    .line 376
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_18

    .line 377
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v1, :cond_14

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->flight_mode_enabled_toast:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_c

    :cond_14
    if-eqz v5, :cond_15

    .line 382
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_c

    :cond_15
    if-eqz v4, :cond_17

    if-nez v7, :cond_16

    goto :goto_b

    .line 386
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 384
    :cond_17
    :goto_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->prevent_to_change_by_device_policy:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->mobileap:I

    invoke-static {p0, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 389
    :cond_18
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "both SwitchBar and SwitchPref are null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void
.end method

.method private updateProgress()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v0

    .line 330
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgress wifiapstate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 331
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    return-void
.end method


# virtual methods
.method public addSwitchChangeListener()V
    .locals 2

    .line 1636
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "addSwitchChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public enableTethering(Z)V
    .locals 3

    .line 776
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTethering:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 778
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_0

    .line 780
    :cond_0
    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "LGT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 781
    sget p1, Lcom/android/settings/R$string;->wifi_ap_warn_toast_lgt:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    .line 783
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :goto_0
    return-void
.end method

.method public getDataLimitEditTextValue()Ljava/lang/String;
    .locals 1

    .line 1731
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1732
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 5

    .line 1725
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getDataLimitEditTextValue()Ljava/lang/String;

    move-result-object p0

    .line 1726
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 884
    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() hit - requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-ne p3, p1, :cond_0

    .line 886
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 889
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p2, " provisioning success"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    .line 891
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto/16 :goto_2

    .line 893
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_saved_state"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 896
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xc

    const-string v3, " provisioning failed, enabling Wifi "

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 897
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 918
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 919
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p2, " provisioning failed, Wifi is connected, so enabling MHS "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto :goto_2

    :cond_3
    if-ne p1, p3, :cond_6

    .line 922
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 924
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 898
    :cond_4
    :goto_0
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 899
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p1, " provisioning failed, MHS is ON and Wifi is connected"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 902
    :cond_5
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, " provisioning failed, MHS is ON and Wifi is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    if-ne p1, p3, :cond_6

    const-wide/16 v1, 0x258

    .line 906
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 908
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 909
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 911
    :goto_1
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 913
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 967
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 955
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 230
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 231
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string v0, "TETH_010"

    const-string v1, "8001"

    .line 232
    invoke-static {v0, v1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 237
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto :goto_1

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p1, "WifiApBlocked so not enabling"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isInternetSharingAllowed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 244
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "InternetSharing not Allowed so not enabling"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget p1, Lcom/android/settings/R$string;->wifi_ap_security_policy:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    return p2

    .line 248
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    if-nez p1, :cond_4

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isOpenWifiApAllowed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 250
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "openSecurity is not allowed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x104048c

    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    return p2

    .line 255
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkIfSIMCardPresentAndProceedFurthur()V

    :cond_5
    :goto_1
    return p2
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 933
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForConfigurationSet:Z

    if-eqz v0, :cond_0

    .line 935
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "waitingForConfigurationSet()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 936
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForConfigurationSet:Z

    .line 937
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isDefaultPassphraseSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->CheckWiFiConcurrencyAndProceedFurthur()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 945
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "on Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->WIFIAP_SWITCH_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 947
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;

    .line 948
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 949
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateProgress()V

    .line 950
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 960
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 962
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 454
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    .line 455
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged  getWifiApState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 457
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p2, "onSwitchChanged, disabling"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_5

    const/16 p2, 0xb

    if-eq p1, p2, :cond_1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_5

    .line 460
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 461
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p2, "onSwitchChanged, enabling/enabled"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 463
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p1, "WifiApBlocked so not enabling"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 466
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isInternetSharingAllowed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 467
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p1, "InternetSharing not Allowed so not enabling"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 470
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    if-nez p1, :cond_4

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isOpenWifiApAllowed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 472
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string p2, "openSecurity is not allowed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x104048c

    .line 473
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    return-void

    .line 477
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkIfSIMCardPresentAndProceedFurthur()V

    :cond_5
    :goto_0
    return-void
.end method

.method public removeSwitchChangeListener()V
    .locals 2

    .line 1640
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "removeSwitchChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public showDialog(I)V
    .locals 5

    .line 971
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v1, 0x3

    const-string v2, "VZW"

    if-eq p1, v1, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_5

    .line 1332
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDatalimitReachedpopup(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V

    goto/16 :goto_5

    .line 1184
    :pswitch_1
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "CASE DIALOG_WARN_DUALAP_WIFI_DISABLE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1186
    sget v0, Lcom/android/settings/R$string;->wifi_ap_dualap_wifi_off_warn:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->positive_button_off:I

    .line 1187
    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1201
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1207
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_title:I

    .line 1212
    invoke-static {p0, v0}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1213
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1214
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1151
    :pswitch_2
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "CASE DIALOG_WARN_WIRELESS_DEX_DISABLE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1153
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wirelessdex_off_warn:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_ap_disconnect_text:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1154
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1168
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1174
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_ap_wirelessdex_off_warn_title:I

    .line 1179
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1180
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1181
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1217
    :pswitch_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1218
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_nan_off_warn:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_button_stop:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1219
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1225
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1231
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_nan_off_warn_title:I

    .line 1236
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1237
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1238
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1378
    :pswitch_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_24ghz_client_mhs_on_text:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1380
    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1386
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1391
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_mobile_hotspot_not_available:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1392
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1393
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1351
    :pswitch_5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1352
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_indoor_text:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1353
    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$37;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$37;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1361
    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1368
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1373
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_indoor_disconnect_text:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1374
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1375
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1108
    :pswitch_6
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "CASE DIALOG_WARN_SMARTVIEW_DISABLE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1110
    sget v0, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->turn_off_button:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1111
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1135
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1141
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn_title:I

    .line 1146
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1147
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1148
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1345
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_c

    .line 1347
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1335
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "dontshowmemhsfirsttime"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 1336
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1337
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    .line 1338
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V

    goto/16 :goto_5

    .line 1340
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto/16 :goto_5

    .line 996
    :pswitch_9
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "DIALOG_WIFI_SHARING_FIRST_TIME"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 998
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1000
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_text_att:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_text:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1005
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_title:I

    .line 1006
    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1007
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1008
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1013
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1018
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1019
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1062
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1063
    sget v0, Lcom/android/settings/R$string;->wifi_ap_dialog_disclaimer:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1064
    sget v0, Lcom/android/settings/R$string;->bluetooth_accept:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1070
    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1076
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1081
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1082
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1083
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    const p1, 0x102000b

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_5

    .line 1086
    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1087
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dialog_battery_data_warning:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1088
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1093
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1098
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->mobileap:I

    .line 1103
    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1104
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1105
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1308
    :cond_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_p2p_off_warn:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->turn_on_button:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$36;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$36;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1310
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1316
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$34;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$34;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 1322
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_p2p_off_warn_title:I

    .line 1327
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1328
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1329
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1022
    :cond_5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {p1, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1023
    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1024
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_msg_beyond_vzw:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1025
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->lockpattern_continue_button_text:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1030
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1035
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_title_beyond_vzw:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1036
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1037
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 1044
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_msg:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "$20.48"

    aput-object v4, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1045
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->lockpattern_continue_button_text:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1050
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1051
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1052
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1058
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1059
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    .line 1242
    :cond_7
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1243
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1244
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_ap_wifi_disable_warning_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    .line 1245
    sget v1, Lcom/android/settings/R$id;->wifi_ap_wifi_disable_warning_do_not_show:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    .line 1246
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_ap_warning_disable_do_not_show_again:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    .line 1247
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_ap_disable_warning_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1249
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v1, :cond_8

    .line 1250
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_beyond_vzw:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1252
    :cond_8
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_vzw:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1254
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 1256
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1259
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->positive_button_off:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1292
    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1298
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$33;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$33;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1303
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_title:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1304
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1305
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_5

    .line 974
    :cond_a
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 975
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 976
    sget v0, Lcom/android/settings/R$string;->mobile_hotspot_dialog_nouim_or_nosim_warning:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 978
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 980
    :goto_4
    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 986
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 991
    sget v0, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 992
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 993
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_c
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
