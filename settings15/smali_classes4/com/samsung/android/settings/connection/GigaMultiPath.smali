.class public Lcom/samsung/android/settings/connection/GigaMultiPath;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

.field public mAlertDialog:Landroid/app/AlertDialog$Builder;

.field public mHoldingHandler:Landroid/os/Handler;

.field public mIsMobileDataEnabling:Z

.field public mIsNetworkEnabling:Z

.field public mIsSupport5G:Z

.field public mIsWiFiEnabling:Z

.field public mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

.field public mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mRemoveProgress:Lcom/samsung/android/settings/connection/GigaMultiPath$7;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsSupport5G:Z

    return-void
.end method


# virtual methods
.method public final closeProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaMultiPath$7;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaMultiPath$7;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public final isSimValid$1()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "45006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "mptcp_value"

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "smart_bonding"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/high16 v2, 0x1040000

    const v3, 0x104000a

    const v4, 0x7f1418d2

    if-eqz p1, :cond_2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1418d1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath$1;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;I)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath$1;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;I)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

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

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f1418d3

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1418d6

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1418d5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/connection/GigaMultiPath$3;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$1;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath$1;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;I)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1418cc

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$1;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath$1;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;I)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaMultiPath$1;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaMultiPath$1;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;I)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->showProgressDialog$1$1()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/connection/GigaMultiPath;->sendMptcpStartBroadCast$1(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1418d2

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-eq v3, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1418ce

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->isSimValid$1()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1418cd

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1418d0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1418c8

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1418cb

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept()Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean v2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsSupport5G:Z

    :cond_8
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d07ec

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00c8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsSupport5G:Z

    if-eqz p0, :cond_0

    const p0, 0x7f1418ca

    goto :goto_0

    :cond_0
    const p0, 0x7f1418c9

    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "com.samsung.android.mptcp.MPTCP_STATE"

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    iput-object v1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/settings/connection/GigaMultiPath$8;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v2, p0, v4, v5}, Lcom/samsung/android/settings/connection/GigaMultiPath$8;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaMultiPath$8;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->isSimValid$1()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mptcp_value"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v1, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->closeProgressDialog()V

    :cond_7
    return-void
.end method

.method public final sendMptcpStartBroadCast$1(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mptcp_start"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GigaMultiPath"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final showProgressDialog$1$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14186a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaMultiPath$7;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath$7;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaMultiPath$7;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaMultiPath$7;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
