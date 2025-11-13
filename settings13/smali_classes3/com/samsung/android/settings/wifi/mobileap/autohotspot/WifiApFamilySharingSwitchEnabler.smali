.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApFamilySharingSwitchEnabler.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static TAG:Ljava/lang/String; = "WifiApFamilySharingSwitchEnabler"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

.field private mSettingsFragmentActivity:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method public static synthetic $r8$lambda$MZnrg-0DkMQIifkrkOfbDUbiEIE(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->lambda$showEnableAppDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eIY6ziP31IlRugLkYGk8yXXirr4(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->lambda$showEnableAppDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPXMT38ATsnMebtpCJpPzYhiLh4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->lambda$showEnableAppDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familySharingDisabledIntent"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.mhs.smarttethering.MY_INVITATION_LIST_CHANGED"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.mhs.smarttethering.GROUP_API_RESULT_AND_DB_READ_REQUEST"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.ACTION_WIFI_AP_FAMILY_LOCAL_GROUP_UPDATED"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    .line 78
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mActivity:Landroid/app/Activity;

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mSettingsFragmentActivity:Lcom/android/settings/SettingsPreferenceFragment;

    .line 80
    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private synthetic lambda$showEnableAppDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 299
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 302
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ActivityNotFoundException:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showEnableAppDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showEnableAppDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method private preSetCheckConditions()V
    .locals 9

    .line 126
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Checking setCheck conditions."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSimEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 128
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 129
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v3

    .line 130
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isGroupSharingAppDisabled(Landroid/content/Context;)Z

    move-result v4

    .line 131
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isFamilySharingServiceRegisteredOn(Landroid/content/Context;)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 132
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    .line 133
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v7

    xor-int/2addr v7, v1

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 136
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Group sharing App check condition failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sems_app_name:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.mobileservice"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->showEnableAppDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Sim check condition failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 146
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->mobile_hotspot_dialog_nouim_or_nosim_warning:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_2
    if-eqz v7, :cond_4

    .line 155
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Auto Hotspot On check condition failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 157
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_turn_on_auto_hotspot_to_use_family_sharing_jpn:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 160
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_turn_on_auto_hotspot_to_use_family_sharing:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_4
    if-eqz v2, :cond_5

    .line 166
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Network check condition failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 170
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Samsung Account check condition failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 172
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mActivity:Landroid/app/Activity;

    const/16 v0, 0x69

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->launchAddSamsungAccountActivity(Landroid/app/Activity;I)V

    return-void

    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 177
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Family service registered check condition failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mSettingsFragmentActivity:Lcom/android/settings/SettingsPreferenceFragment;

    const/16 v0, 0x258

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->launchFamilyServiceRegisterActivityForResult(Lcom/android/settings/SettingsPreferenceFragment;I)V

    return-void

    :cond_7
    if-eqz v6, :cond_8

    .line 183
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Family group Id check failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mSettingsFragmentActivity:Lcom/android/settings/SettingsPreferenceFragment;

    const/16 v0, 0x262

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->launchSocialPickerForCreatingGroupActivity(Lcom/android/settings/SettingsPreferenceFragment;I)V

    :cond_8
    return-void
.end method

.method private showEnableAppDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 293
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "Showing Enable AppDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_ap_disabled_app_popup_title:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_ap_disabled_app_popup_message:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->sec_app_more_settings_btn_tooltip:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$$ExternalSyntheticLambda1;-><init>()V

    .line 308
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$$ExternalSyntheticLambda2;-><init>()V

    .line 311
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 190
    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() - requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode(-1 for RESULT_OK) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/16 v2, 0x258

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_0

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->setFamilySharingServiceRegisteredDB(Landroid/content/Context;Z)V

    .line 194
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->setChecked(Z)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x262

    if-ne p1, v2, :cond_3

    if-ne p2, v0, :cond_2

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->startSmartTetheringApk(Landroid/content/Context;)V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->setChecked(Z)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 285
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 287
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 115
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->preSetCheckConditions()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->setFamilySharingServiceRegisteredDB(Landroid/content/Context;Z)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    return-void
.end method

.method public setOnStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    return-void
.end method

.method public updateSwitchState()V
    .locals 14

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isTetheringRestricted(Landroid/content/Context;)Z

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSimEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 214
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 215
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v5

    .line 216
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v6, v3

    .line 217
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isGroupSharingAppDisabled(Landroid/content/Context;)Z

    move-result v7

    .line 218
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isFamilySharingServiceRegisteredOn(Landroid/content/Context;)Z

    move-result v8

    xor-int/2addr v8, v3

    .line 219
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    .line 220
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v10

    xor-int/2addr v10, v3

    .line 221
    sget-object v11, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating Family Sharing Switch state - isTetheringRestricted : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isAirplaneModeOn : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isSimDisabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNetworkDisconnected : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSamsungAccountLoggedOut : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNearByDeviceScanningDisabled : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isGroupSharingAppDisabled : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFamilySharingServiceNotRegistered : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFamilyGroupIdEmpty : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAutoHotspotOff : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 240
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_1
    if-eqz v4, :cond_2

    .line 246
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_2
    if-eqz v5, :cond_3

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 250
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_3
    if-eqz v6, :cond_4

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 256
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_4
    const/16 v0, 0x9

    if-eqz v7, :cond_5

    .line 260
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 261
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 266
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_6
    if-eqz v9, :cond_7

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 271
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    :cond_7
    if-eqz v10, :cond_8

    .line 275
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->setFamilySharingServiceRegisteredDB(Landroid/content/Context;Z)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 277
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void

    .line 280
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    return-void
.end method
