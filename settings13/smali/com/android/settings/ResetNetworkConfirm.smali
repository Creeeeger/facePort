.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field mContentView:Landroid/view/View;

.field private mDisableListner:Z

.field mEraseEsim:Z

.field mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsATTReset:Z

.field private mIsFirstResume:Z

.field private mIsUnderProgress:Z

.field private mIsWiFiEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

.field private mSubId:I

.field private mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public static synthetic $r8$lambda$20eFUV_UqqXYOIZzbuSkUloVzsw(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->lambda$onCreateView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsATTReset(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsATTReset:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFirstResume(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsFirstResume:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWiFiEnabled(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsWiFiEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/settings/ResetNetworkConfirm;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoveProgress(Lcom/android/settings/ResetNetworkConfirm;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/android/settings/ResetNetworkConfirm;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAlertDialog(Lcom/android/settings/ResetNetworkConfirm;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstResume(Lcom/android/settings/ResetNetworkConfirm;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsFirstResume:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWiFiEnabled(Lcom/android/settings/ResetNetworkConfirm;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsWiFiEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSubscriptionManager(Lcom/android/settings/ResetNetworkConfirm;)Landroid/telephony/SubscriptionManager;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misSubscriptionRemainActive(Lcom/android/settings/ResetNetworkConfirm;Landroid/telephony/SubscriptionManager;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ResetNetworkConfirm;->isSubscriptionRemainActive(Landroid/telephony/SubscriptionManager;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveProgress(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->removeProgress(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetNetwork(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->resetNetwork(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msecResetNetwork(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->secResetNetwork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPassword(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->startPassword()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopMonitorSubscriptionChange(Lcom/android/settings/ResetNetworkConfirm;Landroid/telephony/SubscriptionManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->stopMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 111
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_RESET_NETWORK_ATT_PASSWORD_CONFIRM:Z

    iput-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsATTReset:Z

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsUnderProgress:Z

    .line 121
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$2;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bluetoothPreferenceReset()V
    .locals 3

    .line 704
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth_blocking_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blocking_device_list"

    .line 705
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 706
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 707
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_bubble_tips_count"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private cleanUpSmsRawTable(Landroid/content/Context;)V
    .locals 1

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 478
    sget-object p1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "raw/permanentDelete"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->execute_reset_network:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 352
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1

    .line 322
    new-instance p0, Landroid/app/ProgressDialog;

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 326
    sget v0, Lcom/android/settings/R$string;->sec_reset_network_settings:I

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 328
    sget v0, Lcom/android/settings/R$string;->main_clear_progress_text:I

    .line 329
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 2

    .line 412
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-nez p0, :cond_0

    const-string v0, "ResetNetworkConfirm"

    const-string v1, "No SubscriptionManager"

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method private isSubscriptionRemainActive(Landroid/telephony/SubscriptionManager;I)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 667
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.security.Password"

    .line 668
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".title"

    .line 669
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".subject"

    .line 670
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".password"

    .line 671
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0, v0, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private removeProgress(Landroid/content/Context;)V
    .locals 1

    const-string p1, "ResetNetworkConfirm"

    const-string v0, "removeProgress"

    .line 690
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 693
    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 696
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsATTReset:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 697
    iput-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mDisableListner:Z

    :cond_1
    const-string p0, "ResetNetwork process is completed."

    .line 699
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetNetwork(Landroid/content/Context;)V
    .locals 9

    const-string v0, "ResetNetworkConfirm"

    const-string v1, "resetNetwork is started."

    .line 565
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "connectivity"

    .line 567
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    const-string v2, "ConnectivityManager Reset is started."

    .line 569
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 573
    :cond_0
    const-class v1, Landroid/net/VpnManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/VpnManager;

    if-eqz v1, :cond_1

    .line 575
    invoke-virtual {v1}, Landroid/net/VpnManager;->factoryReset()V

    .line 578
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsATTReset:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, "wifi"

    .line 580
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    const-string v2, "WifiManager Reset is started."

    .line 582
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    :cond_2
    const-string v1, "sem_wifi"

    .line 587
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v1, :cond_3

    const-string v2, "mSemWifiManager Reset is started."

    .line 589
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->factoryReset()V

    .line 593
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->wifiCloudSyncPreferenceReset()V

    .line 595
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->p2pFactoryReset(Landroid/content/Context;)V

    .line 597
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 598
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 599
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 601
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->resetSettings()V

    :cond_5
    const-string v2, "netpolicy"

    .line 605
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicyManager;

    const-string/jumbo v3, "subId"

    if-eqz v2, :cond_7

    const-string v4, "NetworkPolicyManager Reset is started."

    .line 607
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 610
    sget-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_RESET_NETWORK_DATA_USAGE_CHN:Z

    if-eqz v4, :cond_6

    .line 611
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 612
    iget v5, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.samsung.android.sm.dcapi"

    const-string v7, "resetDataUsageChnBySubId"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reset data usage chn error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_6
    :goto_0
    invoke-virtual {v2, v1}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    :cond_7
    const-string v1, "bluetooth"

    .line 625
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    if-eqz v1, :cond_8

    .line 627
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "BluetoothManager Reset is started."

    .line 629
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    :cond_8
    const-string v1, "restoreDefaultApn(context) is started."

    .line 634
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->restoreDefaultApn(Landroid/content/Context;)V

    const-string v1, "Sms Raw table Reset is started."

    .line 641
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->cleanUpSmsRawTable(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 644
    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsUnderProgress:Z

    .line 647
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    iget v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 649
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 650
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    const-string v1, "com.sec.android.settings.permission.NETWORK_RESET"

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "resetNetwork is done"

    .line 652
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restoreDefaultApn(Landroid/content/Context;)V
    .locals 3

    const-string v0, "content://telephony/carriers/restore"

    .line 337
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 339
    iget v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    .line 344
    invoke-virtual {p0, v0, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private secResetNetwork()V
    .locals 6

    const-string v0, "ResetNetworkConfirm"

    const-string v1, "secResetNetwork is started."

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mDisableListner:Z

    if-eqz v1, :cond_0

    return-void

    .line 506
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsUnderProgress:Z

    if-eqz v1, :cond_1

    const-string p0, "already under resetNetwork progress. Skip request"

    .line 507
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 510
    iput-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsUnderProgress:Z

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsATTReset is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsATTReset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-boolean v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsATTReset:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 514
    iput-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mDisableListner:Z

    .line 515
    iput-boolean v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsWiFiEnabled:Z

    .line 516
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/android/settings/ResetNetworkConfirm;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 517
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 518
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    .line 519
    new-instance v1, Lcom/android/settings/ResetNetworkConfirm$4;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetNetworkConfirm$4;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;

    .line 529
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 534
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 536
    :try_start_0
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->networkReset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 538
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "Reset voicecall_type"

    .line 543
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voicecall_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Reset Mobile data only"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 550
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/net/ConnectivitySettingsManager;->setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V

    .line 555
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->bluetoothPreferenceReset()V

    const-string v1, "secResetNetwork is done"

    .line 558
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    new-array p0, v3, [Ljava/lang/Void;

    .line 561
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 424
    :cond_0
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$3;

    .line 425
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ResetNetworkConfirm$3;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 438
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 439
    invoke-virtual {v0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 438
    invoke-virtual {p1, v0, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private startPassword()V
    .locals 4

    const-string v0, "ResetNetworkConfirm"

    const-string v1, "Start password"

    .line 656
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    sget v1, Lcom/android/settings/R$string;->password:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->confirm_password:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/settings/ResetNetworkConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private stopMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const/4 p1, 0x0

    .line 451
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    :cond_1
    :goto_0
    return-void
.end method

.method private wifiCloudSyncPreferenceReset()V
    .locals 2

    .line 712
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "SettingsSCloudWifi"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 713
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 714
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 715
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x54

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 678
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_0

    .line 681
    iget-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsATTReset:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->secResetNetwork()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 388
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 392
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    const-string v1, "erase_esim"

    .line 394
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 399
    iget p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    if-ne p1, v0, :cond_1

    return-void

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->startMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V

    .line 407
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 366
    iget-object p2, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_network_reset"

    .line 366
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 368
    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 369
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 368
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 370
    sget p0, Lcom/android/settings/R$layout;->network_reset_disallowed_screen:I

    invoke-virtual {p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 372
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 373
    invoke-virtual {p1, v0, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/ResetNetworkConfirm$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/ResetNetworkConfirm$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    .line 374
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 376
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 378
    :cond_1
    sget p2, Lcom/android/settings/R$layout;->sec_reset_network_confirm:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 379
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 383
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 457
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 464
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 466
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ResetNetworkConfirm;->stopMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V

    .line 467
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 494
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 484
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 486
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 487
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsFirstResume:Z

    return-void
.end method

.method p2pFactoryReset(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo p0, "wifip2p"

    .line 310
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    .line 312
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->factoryReset(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method setSubtitle()V
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->reset_network_confirm:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->reset_network_final_desc_esim:I

    .line 359
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
