.class public abstract Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
.super Ljava/lang/Object;
.source "WifiWarningControlDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field protected mBuilder:Landroid/app/AlertDialog$Builder;

.field protected mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mContentVzw:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field protected mCustomViewVzw:Landroid/view/View;

.field private final mDialogTheme:I

.field protected mHasSentBroadcast:Z

.field protected mIntent:Landroid/content/Intent;

.field protected mIsAirplaneMode:Z

.field protected mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

.field protected mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private final mTimeoutHandler:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;

.field protected mTitleVzw:Landroid/widget/TextView;

.field private mTurningOffDialog:Landroid/app/ProgressDialog;

.field private mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field protected mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private mWifiEnableCheck:Z

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field protected mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public static synthetic $r8$lambda$wS0Iw-mroTKVEskP64oLiHh0IZ0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->lambda$setApDisableDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/settings/R$style;->SettingsTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    .line 110
    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 112
    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mDialogTheme:I

    .line 114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 118
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 119
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    const-string v0, "wifip2p"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const-string p2, "sem_wifi"

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const-string p2, "WifiWarningControlDialog"

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez p1, :cond_2

    const-string p1, "Failed to set up connection with wifi p2p service"

    .line 125
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_1

    :cond_1
    const-string p1, "mWifiP2pManager is null !"

    .line 129
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.wifi.aware"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    const-string p2, "wifiaware"

    .line 134
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/aware/WifiAwareManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 137
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.settings.wifi.notifySelected"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mIntent:Landroid/content/Intent;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$layout;->sec_wifi_ap_wifi_enable_warning_dialog:I

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCustomViewVzw:Landroid/view/View;

    .line 141
    sget p2, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTitleVzw:Landroid/widget/TextView;

    .line 142
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCustomViewVzw:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContentVzw:Landroid/widget/TextView;

    .line 143
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCustomViewVzw:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 145
    new-instance p1, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;-><init>(Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;

    return-void
.end method

.method private static synthetic lambda$setApDisableDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method private setPositiveButton()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->getClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setPositiveButton()V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setNegativeButton()V

    .line 169
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->neverShowAgainVzwAlertDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setShowAgainOptionForVzw()V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setAlertDialogForVzw()V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setApDisableDialog()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setAlertDialog()V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setApDisableDialog()V

    :goto_0
    return-void
.end method

.method private showEmptyDialog()V
    .locals 2

    .line 183
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setAlertDialogForVzw()V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setAlertDialog()V

    :goto_0
    return-void
.end method

.method private showHotspotProgressDialog()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 258
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 261
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_turning_off_jpn:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_turning_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 270
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;->startTimer(J)V

    return-void
.end method


# virtual methods
.method public destroyDialog()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;->stopTimer()V

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mHasSentBroadcast:Z

    return-void
.end method

.method public disableMobileHotspot()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->handleWifiApStateChanged(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->showHotspotProgressDialog()V

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_0
    return-void
.end method

.method protected dismissApDisableDialog()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 3

    const-string v0, "WifiWarningControlDialog"

    const-string v1, "dismissProgressDialog"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "called_dialog"

    .line 198
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 202
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTurningOffDialog:Landroid/app/ProgressDialog;

    .line 204
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected getBoolSharedPref(Ljava/lang/String;)Z
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    const-string v2, "SAMSUNG_WIFIENABLEWARNING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method protected abstract getClickListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method protected getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleWifiApStateChanged(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract neverShowAgainVzwAlertDialog()Z
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 303
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->checkbox:I

    if-ne p1, v0, :cond_0

    .line 304
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiEnableCheck:Z

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCheckedChanged mWifiEnableCheck ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiEnableCheck:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiWarningControlDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected putIntSharedPref(Ljava/lang/String;I)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "SAMSUNG_WIFIENABLEWARNING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 240
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected sendBroadcastAsUser(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mHasSentBroadcast:Z

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mIntent:Landroid/content/Intent;

    const-string v0, "selected"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mIntent:Landroid/content/Intent;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastCancelEnablingWifi()V
    .locals 3

    const-string v0, "WifiWarningControlDialog"

    const-string v1, "sendBroadcastCancelEnablingWifi"

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "called_dialog"

    const/4 v2, 0x1

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method protected sendEnableNanBroadcast(Z)V
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEnableNanBroadcast: enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiWarningControlDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.wifi.enableNan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enabled"

    .line 312
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method protected sendNotifySelectedBroadcast(Z)V
    .locals 0

    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mIsAirplaneMode:Z

    return-void
.end method

.method protected abstract setAlertDialog()V
.end method

.method protected abstract setAlertDialogForVzw()V
.end method

.method protected setApDisableDialog()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 222
    new-instance v1, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected setCheckboxForVzw()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiEnableCheck:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCustomViewVzw:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected abstract setNegativeButton()V
.end method

.method protected abstract setShowAgainOptionForVzw()V
.end method

.method public setupDialog()V
    .locals 1

    .line 159
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->showEmptyDialog()V

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->showDialog()V

    :goto_0
    return-void
.end method

.method protected showProgressDialog()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 318
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 322
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTurningOffDialog:Landroid/app/ProgressDialog;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTurningOffDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 326
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;J)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 275
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 279
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 285
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;->startTimer(J)V

    return-void
.end method

.method public stopDialog()V
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mHasSentBroadcast:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendNotifySelectedBroadcast(Z)V

    :cond_0
    return-void
.end method
