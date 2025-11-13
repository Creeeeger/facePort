.class public Lcom/samsung/android/settings/wifi/WifiPickerDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mLastToast:Landroid/widget/Toast;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;

.field public mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;


# direct methods
.method public static -$$Nest$mrequestSystemKeyEvents(Lcom/samsung/android/settings/wifi/WifiPickerDialog;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    const/16 v1, 0xbb

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    goto :goto_0

    :cond_1
    const-string p0, "WifiPickerDialog"

    const-string p1, "Windowmanager is not yet initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;

    return-void
.end method


# virtual methods
.method public final getNextButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasNextButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "WifiPickerDialog"

    if-eqz p1, :cond_0

    const-string v1, "key_finish"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "not allow to show the picker dialog when device theme was changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiPickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V

    iput-object p1, v1, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiPickerDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mActivityManager:Landroid/app/ActivityManager;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    const-string v1, "checkAndShowWindowPinnedMsg() -:- isWindowPinned ==> "

    const-string v2, "WifiPickerDialog"

    invoke-static {v1, v2, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez p1, :cond_3

    const-string p1, "accessibility"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_3
    const/4 p1, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "android"

    const-string/jumbo v1, "string"

    if-eqz p2, :cond_5

    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string/jumbo v3, "tw_lock_to_app_toast_accessible"

    invoke-virtual {p2, v3, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string/jumbo v3, "tw_lock_to_app_toast"

    invoke-virtual {p2, v3, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v3, "lock_to_app_toast_accessible"

    invoke-virtual {p2, v3, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v3, "lock_to_app_toast"

    invoke-virtual {p2, v3, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    :cond_7
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_3
    const-string p0, "key consumed when window is pinned"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.kidsplat.quickpanel.PANEL_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "key_finish"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
