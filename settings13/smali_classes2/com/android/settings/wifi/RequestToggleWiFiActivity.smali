.class public Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestToggleWiFiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
    }
.end annotation


# instance fields
.field protected mActivityManager:Landroid/app/IActivityManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAppLabel:Ljava/lang/CharSequence;

.field private mLastUpdateState:I

.field private final mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

.field private mState:I

.field private final mTimeoutCommand:Ljava/lang/Runnable;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$t5QesuxC17NyT1UN7wwYQVe1S48(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWiFiManager(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    .line 62
    new-instance v0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    .line 71
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 74
    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_0
    return-void
.end method

.method private scheduleToggleTimeout()V
    .locals 3

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unscheduleToggleTimeout()V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateUi()V
    .locals 7

    .line 249
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    if-ne v0, v1, :cond_0

    return-void

    .line 252
    :cond_0
    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5, v6, v6, v6}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4, v6, v6, v6}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 289
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 290
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 291
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 292
    sget v1, Lcom/android/settings/R$string;->wifi_stopping:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v3, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 277
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 278
    sget v3, Lcom/android/settings/R$string;->deny:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 279
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 280
    sget v3, Lcom/android/settings/R$string;->wifi_ask_disable:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5, v6, v6, v6}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4, v6, v6, v6}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 269
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 270
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 271
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 272
    sget v1, Lcom/android/settings/R$string;->wifi_starting:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 256
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v3, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 257
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 258
    sget v3, Lcom/android/settings/R$string;->deny:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 259
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 260
    sget v3, Lcom/android/settings/R$string;->wifi_ask_enable:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 296
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method protected getAppLabel()Ljava/lang/CharSequence;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "RequestToggleWiFiActivity"

    const/4 v1, 0x0

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "Package name is null"

    .line 228
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 237
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x5

    invoke-virtual {v3, p0, v4, v5}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 243
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find app with package name "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    const-string p0, "Can not get the package from activity manager"

    .line 232
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 p1, 0x4

    .line 123
    iput p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 124
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 p1, 0x2

    .line 116
    iput p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 117
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 80
    const-class p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.net.wifi.action.REQUEST_ENABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.net.wifi.action.REQUEST_DISABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 100
    iput p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 96
    iput p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 7

    .line 139
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->register()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 144
    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v1, v4, :cond_b

    if-eq v1, v5, :cond_7

    const/4 v6, 0x4

    if-eq v1, v3, :cond_4

    if-eq v1, v6, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    iput v3, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    :cond_4
    if-eq v0, v4, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_0

    .line 168
    :cond_5
    iput v6, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 169
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 162
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_7
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v3, :cond_8

    goto :goto_0

    .line 178
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 183
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_0

    .line 188
    :cond_a
    iput v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_0

    :cond_b
    if-eq v0, v5, :cond_d

    if-eq v0, v3, :cond_c

    goto :goto_0

    .line 148
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 153
    :cond_d
    iput v5, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    .line 154
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    .line 212
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->unregister()V

    .line 218
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->unscheduleToggleTimeout()V

    .line 219
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
