.class public Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ProfileShareCasterDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConfirmed:Z

.field private mIsHotspot:Z

.field private mIsNotifyNeeded:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeoutHandler:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;

.field private mUserData:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUserData(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNotifyNeeded(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsNotifyNeeded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyDialog(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->destroyDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsNotifyNeeded:Z

    .line 153
    new-instance v0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;-><init>(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private collapseSystemUi()V
    .locals 1

    const-string v0, "statusbar"

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method private createProfileView()Landroid/view/View;
    .locals 11

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/ContactHelper;->getContactInfoByHash(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find Subscriber\'s profile on this device"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProfileShareCasterDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 111
    sget v3, Lcom/android/settings/R$layout;->sec_wifi_profile_share_caster_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    sget v2, Lcom/android/settings/R$id;->textView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    sget v3, Lcom/android/settings/R$id;->imageView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 114
    sget v5, Lcom/android/settings/R$id;->iconTitle:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 116
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsHotspot:Z

    const/4 v7, 0x1

    if-nez v6, :cond_3

    .line 118
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    const-string v8, ""

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v8

    :goto_0
    const-string v9, "<unknown ssid>"

    .line 122
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move-object v8, v6

    .line 125
    :goto_1
    sget v6, Lcom/android/settings/R$string;->wifi_profile_share_caster_dialog_content:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->name:Ljava/lang/String;

    aput-object v10, v9, v4

    aput-object v8, v9, v7

    invoke-virtual {p0, v6, v9}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 127
    :cond_3
    sget v6, Lcom/android/settings/R$string;->wifi_profile_share_caster_dialog_content_for_hotspot:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->name:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 129
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/ContactHelper;->getContactProfileBitmap(Landroid/content/Context;Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    iget-object p0, v0, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private destroyDialog()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const-string v0, "ProfileShareCasterDialog"

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "User allowed to share password"

    .line 139
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "WIFI_111"

    const-string p2, "0127"

    .line 140
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsConfirmed:Z

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->destroyDialog()V

    goto :goto_0

    :cond_1
    const-string p1, "User declined to share password"

    .line 145
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->destroyDialog()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "userData"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    const-string v0, "isHotspot"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsHotspot:Z

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    const-string v0, "ProfileShareCasterDialog"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;-><init>(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->createProfileView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->destroyDialog()V

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 77
    sget p1, Lcom/android/settings/R$string;->wifi_profile_share_caster_dialog_button_positive:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 78
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    sget v1, Lcom/android/settings/R$string;->wifi_profile_share_caster_dialog_button_negative:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 80
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string p1, "uimode"

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    .line 84
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const p1, 0x103012e

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    goto :goto_0

    :cond_2
    const p1, 0x1030132

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show dialog "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->collapseSystemUi()V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void

    :cond_3
    :goto_1
    const-string p1, "userData is Null or empty"

    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsNotifyNeeded:Z

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->destroyDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 193
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsNotifyNeeded:Z

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy accepted? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsConfirmed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfileShareCasterDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsConfirmed:Z

    if-nez v0, :cond_0

    const-string v0, "WIFI_111"

    const-string v1, "0126"

    .line 196
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 199
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsConfirmed:Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setUserConfirmForSharingPassword(ZLjava/lang/String;)V

    .line 201
    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 172
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    const-string v0, "WIFI_111"

    .line 173
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.DISMISS_REQ_PASSWORD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 175
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.NETWORK_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 176
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "ProfileShareCasterDialog"

    const-string v1, "onStop"

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->destroyDialog()V

    .line 184
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
