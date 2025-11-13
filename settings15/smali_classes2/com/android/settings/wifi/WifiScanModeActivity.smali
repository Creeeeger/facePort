.class public Lcom/android/settings/wifi/WifiScanModeActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field mApp:Ljava/lang/String;

.field public mDialog:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

.field mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createDialog()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v0

    :goto_0
    const-string v1, "WifiScanModeActivity"

    if-eqz v0, :cond_1

    const-string v0, "Guest user is not allowed to configure Wi-Fi Scan Mode!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "User is a guest"

    const-string v2, "235601169"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "no_config_location"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v2, v0

    :goto_1
    if-nez v2, :cond_3

    const-string v0, "This user is not allowed to configure Wi-Fi Scan Mode!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string v0, "dialog"

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    const-string p1, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->refreshAppLabel()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "app"

    iget-object p0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshAppLabel()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiPermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiPermissionChecker;->mLaunchedPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    return-void
.end method
