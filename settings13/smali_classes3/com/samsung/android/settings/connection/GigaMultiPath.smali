.class public Lcom/samsung/android/settings/connection/GigaMultiPath;
.super Landroidx/fragment/app/Fragment;
.source "GigaMultiPath.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;
    }
.end annotation


# instance fields
.field private final DELAY_REMOVE_PROGRESS_TIME:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mHoldingHandler:Landroid/os/Handler;

.field private mIsMobileDataEnabling:Z

.field private mIsNetworkEnabling:Z

.field private mIsSupport5G:Z

.field private mIsWiFiEnabling:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private final mSubscriberId:Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsMobileDataEnabling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsNetworkEnabling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsWiFiEnabling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsMobileDataEnabling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsNetworkEnabling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsWiFiEnabling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->closeProgressDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetWiFiState(Lcom/samsung/android/settings/connection/GigaMultiPath;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->getWiFiState(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSimValid(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->isSimValid()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->showProgressDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, 0x3a98

    .line 61
    iput v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->DELAY_REMOVE_PROGRESS_TIME:I

    const-string v0, "45006"

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSubscriberId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsSupport5G:Z

    return-void
.end method

.method private closeProgressDialog()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    .line 343
    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 344
    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private getAirplaneModeObserver()Landroid/database/ContentObserver;
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/GigaMultiPath$8;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private getMobileDataObserver()Landroid/database/ContentObserver;
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/samsung/android/settings/connection/GigaMultiPath$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/GigaMultiPath$9;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 469
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private getWiFiState(I)Z
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isSimPresent()Z
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 403
    iget-object v4, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private isSimValid()Z
    .locals 1

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->isSimPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "45006"

    .line 417
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerReceivers()V
    .locals 2

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_STATE"

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    iput-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 2

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mptcp_start"

    .line 300
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GigaMultiPath"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 314
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 315
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/android/settings/R$string;->mptcp_processing_dialog_message:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 326
    new-instance v0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$7;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unRegisterReceivers()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 119
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    sget v0, Lcom/android/settings/R$string;->multi_path_title:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->isSimPresent()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->multi_path_nosim_msg:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->isSimValid()Z

    move-result p1

    if-nez p1, :cond_2

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->multi_path_nolg_sim:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->multi_path_roaming:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->multi_path_airplane:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_5

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->multi_path_mobile_hotspot:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 108
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsSupport5G:Z

    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 127
    sget p2, Lcom/android/settings/R$layout;->sec_airplane_mode_settings:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 128
    sget p2, Lcom/android/settings/R$id;->airplane_mode_desc_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 130
    sget p3, Lcom/android/settings/R$string;->multi_path_body:I

    .line 132
    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsSupport5G:Z

    if-eqz p0, :cond_0

    .line 133
    sget p3, Lcom/android/settings/R$string;->multi_path_body_5G:I

    .line 136
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 182
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 170
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->unRegisterReceivers()V

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->registerReceivers()V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 146
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->getAirplaneModeObserver()Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x1

    .line 145
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    .line 149
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->getMobileDataObserver()Landroid/database/ContentObserver;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mptcp_value"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result v0

    if-eq v1, v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 162
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result v0

    if-ne v1, v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->closeProgressDialog()V

    :cond_4
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mptcp_value"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_6

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "smart_bonding"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/high16 v2, 0x1040000

    const v3, 0x104000a

    if-eqz p1, :cond_2

    .line 208
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 209
    sget p2, Lcom/android/settings/R$string;->multi_path_title:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->multi_path_samrtbonding_off:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$1;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$2;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 231
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 232
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->multi_path_toast_msg:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 235
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 236
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 237
    sget v0, Lcom/android/settings/R$string;->multi_path_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 239
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->multi_path_wifi_msg_5g:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 241
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->multi_path_wifi_msg:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 243
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/connection/GigaMultiPath$3;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$4;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 266
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 268
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 269
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 270
    sget p2, Lcom/android/settings/R$string;->multi_path_title:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 271
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->multi_path_mobile_msg:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 272
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$5;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$6;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 287
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 291
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->showProgressDialog()V

    .line 294
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/connection/GigaMultiPath;->sendMptcpStartBroadCast(Z)V

    return-void
.end method
