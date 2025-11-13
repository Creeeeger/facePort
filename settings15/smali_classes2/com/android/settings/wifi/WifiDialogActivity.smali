.class public Lcom/android/settings/wifi/WifiDialogActivity;
.super Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;
    }
.end annotation


# static fields
.field static final KEY_CONNECT_FOR_CALLER:Ljava/lang/String; = "connect_for_caller"

.field static final REQUEST_CODE_WIFI_DPP_ENROLLEE_QR_CODE_SCANNER:I = 0x0

.field static final RESULT_CONNECTED:I = 0x1


# instance fields
.field public mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field mDialog:Lcom/android/settings/wifi/WifiDialog;

.field mDialog2:Lcom/android/settings/wifi/WifiDialog2;

.field public mIntent:Landroid/content/Intent;

.field public mIsWifiTrackerLib:Z

.field public mLockScreenMonitor:Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;

.field public mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createDialogWithSuwTheme()V
    .locals 10

    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1504a7

    goto :goto_0

    :cond_0
    const v0, 0x7f1504a8

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    if-eqz v1, :cond_1

    new-instance v9, Lcom/android/settings/wifi/WifiDialog2;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v8, 0xe0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZI)V

    iput-object v9, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    new-instance v7, Lcom/android/settings/wifi/WifiDialog;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p0

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IZ)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :goto_1
    return-void
.end method

.method public final finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final hasPermissionForResult()Z
    .locals 9

    const-string v0, "no permission"

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "185126813"

    const v5, 0x534e4554

    const-string v6, "WifiDialogActivity"

    if-nez v1, :cond_0

    const-string p0, "Failed to get the calling package, don\'t return the result."

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "no calling package"

    filled-new-array {v4, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v7, v8, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    const-string p0, "The calling package has ACCESS_FINE_LOCATION permission for result."

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v7, "The calling package does not have the necessary permissions for result."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    filled-new-array {v4, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string v0, "Cannot find the UID, calling package: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v3
.end method

.method public final hasWifiManager()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAddWifiConfigAllowed()Z
    .locals 1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_0

    const-string v0, "no_add_wifi_config"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDialogActivity"

    const-string v0, "The user is not allowed to add Wi-Fi configuration."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isConfigWifiAllowed()Z
    .locals 3

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "no_config_wifi"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    const-string v1, "WifiDialogActivity"

    const-string v2, "The user is not allowed to configure Wi-Fi."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "226133034"

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x534e4554

    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->hasPermissionForResult()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    sget-object v1, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f15027a

    const v3, 0x7f150278

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const v4, 0x7f15027f

    if-ne v0, v4, :cond_1

    const v2, 0x7f150281

    goto :goto_1

    :cond_1
    const v4, 0x7f150283

    if-ne v0, v4, :cond_2

    const v2, 0x7f150285

    goto :goto_1

    :cond_2
    const v4, 0x7f150277

    if-ne v0, v4, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const v3, 0x7f150279

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const v2, 0x7f150274

    if-ne v0, v2, :cond_5

    const v2, 0x7f15037f

    goto :goto_1

    :cond_5
    const v2, 0x7f150275

    if-ne v0, v2, :cond_6

    const v2, 0x7f150380

    goto :goto_1

    :cond_6
    const v2, 0x7f15027e

    if-ne v0, v2, :cond_7

    const v2, 0x7f150287

    goto :goto_1

    :cond_7
    const v2, 0x7f150276

    if-ne v0, v2, :cond_8

    const v2, 0x7f15027b

    goto :goto_1

    :cond_8
    const v2, 0x7f150273

    if-ne v0, v2, :cond_9

    const v2, 0x7f150381

    goto :goto_1

    :cond_9
    move v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    :cond_a
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->isConfigWifiAllowed()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->isAddWifiConfigAllowed()Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_3

    :cond_b
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    const-string v0, "key_chosen_wifientry_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    if-eqz p1, :cond_d

    new-instance p1, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WifiDialogActivity{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Lcom/android/settings/wifi/WifiDialogActivity$1;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Ljava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    goto :goto_2

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    const-string v0, "access_point_state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    :cond_e
    :goto_2
    return-void

    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mLockScreenMonitor:Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/app/KeyguardManager;->removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    iput-object v1, v0, Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mLockScreenMonitor:Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;

    :cond_4
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public final onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public final onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIntent:Landroid/content/Intent;

    invoke-static {p2, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final onStart()V
    .locals 10

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->createDialogWithSuwTheme()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    if-eqz v0, :cond_2

    new-instance v9, Lcom/android/settings/wifi/WifiDialog2;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v3

    const-string v0, "com.android.systemui"

    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZZZ)V

    iput-object v9, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IZ)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mIsWifiTrackerLib:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog2:Lcom/android/settings/wifi/WifiDialog2;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;-><init>(Lcom/android/settings/wifi/WifiDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mLockScreenMonitor:Lcom/android/settings/wifi/WifiDialogActivity$LockScreenMonitor;

    :cond_6
    :goto_2
    return-void
.end method

.method public final onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "connect_for_caller"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->hasPermissionForResult()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "wifi_configuration"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void
.end method

.method public final onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiDialogActivity;->hasWifiManager()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    iget v3, v2, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    :goto_0
    move-object v3, v5

    goto/16 :goto_f

    :cond_1
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v6, :cond_3

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v8, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-boolean v6, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_2
    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v8, 0x22

    const-string v9, "\""

    const/4 v10, 0x6

    const/4 v11, 0x2

    const/4 v12, 0x4

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3, v12}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v9, v6}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_5
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_c

    :pswitch_1
    invoke-virtual {v3, v10}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_3

    :pswitch_2
    iget-object v8, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v13, 0x3

    if-ne v6, v10, :cond_7

    invoke-virtual {v3, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_4

    :cond_7
    if-ne v6, v8, :cond_8

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3, v13}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :goto_4
    new-instance v6, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v6}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    iget-object v14, v2, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v15, "Unknown phase2 method"

    const-string v7, "WifiConfigController"

    if-eqz v6, :cond_e

    if-eq v6, v11, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v14, :cond_d

    if-eq v14, v4, :cond_c

    if-eq v14, v11, :cond_b

    if-eq v14, v13, :cond_a

    invoke-static {v14, v15, v7}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_b
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_c
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_d
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_e
    if-eqz v14, :cond_13

    if-eq v14, v4, :cond_12

    if-eq v14, v11, :cond_11

    if-eq v14, v13, :cond_10

    if-eq v14, v12, :cond_f

    invoke-static {v14, v15, v7}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_10
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_11
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_12
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_13
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :goto_5
    iget-object v8, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v14, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    iget-object v11, v2, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_6

    :cond_14
    iget-object v11, v2, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v14, "/system/etc/security/cacerts"

    invoke-virtual {v11, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    iget-object v11, v2, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v2, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v11, :cond_18

    invoke-virtual {v11}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "Multiple certs can only be set when editing saved network"

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v14, v2, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_18
    :goto_6
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_19

    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_19

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "ca_cert ("

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") and ca_path ("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") should not both be non-null"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    goto :goto_7

    :cond_1a
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    :goto_7
    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, ""

    if-nez v8, :cond_1b

    iget-object v8, v2, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    :cond_1b
    move-object v7, v11

    :cond_1c
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v6, v12, :cond_1f

    if-eq v6, v9, :cond_1f

    if-ne v6, v10, :cond_1d

    goto :goto_8

    :cond_1d
    if-ne v6, v13, :cond_1e

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_9

    :cond_1e
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_9

    :cond_1f
    :goto_8
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :goto_9
    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isShown()Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_20
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {v3, v11}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    :cond_21
    invoke-static {v8, v9, v6}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xa

    if-eq v6, v10, :cond_23

    const/16 v10, 0x1a

    if-eq v6, v10, :cond_23

    const/16 v10, 0x3a

    if-ne v6, v10, :cond_22

    goto :goto_a

    :cond_22
    const/4 v10, 0x0

    goto :goto_b

    :cond_23
    :goto_a
    const-string v6, "[0-9A-Fa-f]*"

    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    goto :goto_c

    :goto_b
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {v8, v9, v7}, Landroidx/compose/ui/platform/AndroidUriHandler$$ExternalSyntheticOutline0;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    goto :goto_c

    :pswitch_5
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :goto_c
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_24

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mActiveSubscriptionInfos:Ljava/util/List;

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v6

    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    :cond_24
    new-instance v6, Landroid/net/IpConfiguration;

    invoke-direct {v6}, Landroid/net/IpConfiguration;-><init>()V

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v6, v7}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v6, v7}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v6, v7}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    iget-object v7, v2, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v6, v7}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_25

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    :cond_25
    iget-object v6, v2, Lcom/android/settings/wifi/WifiConfigController;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_27

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-nez v6, :cond_26

    move v8, v4

    goto :goto_d

    :cond_26
    move v8, v10

    :goto_d
    iput v8, v3, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :cond_27
    iget-object v2, v2, Lcom/android/settings/wifi/WifiConfigController;->mDhcpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_29

    sget-object v6, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController;->Companion:Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController$Companion;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_28

    move v7, v4

    goto :goto_e

    :cond_28
    move v7, v10

    :goto_e
    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiConfiguration;->setSendDhcpHostnameEnabled(Z)V

    :cond_29
    :goto_f
    iget-object v1, v1, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "connect_for_caller"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-nez v3, :cond_2a

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/android/settings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, v1, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v6, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_10

    :cond_2a
    iget-object v2, v0, Lcom/android/settings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    if-eqz v1, :cond_2c

    iget-object v2, v1, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_2b
    iget-object v2, v0, Lcom/android/settings/wifi/WifiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2c
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiDialogActivity;->hasPermissionForResult()Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_2d

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string v1, "access_point_state"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2d
    if-eqz v3, :cond_2e

    const-string v1, "wifi_configuration"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2e
    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiDialogActivity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
