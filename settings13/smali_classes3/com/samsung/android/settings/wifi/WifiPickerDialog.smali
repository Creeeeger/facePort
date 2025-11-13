.class public Lcom/samsung/android/settings/wifi/WifiPickerDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WifiPickerDialog.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mLastToast:Landroid/widget/Toast;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$mrequestSystemKeyEvents(Lcom/samsung/android/settings/wifi/WifiPickerDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->requestSystemKeyEvents(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    .line 185
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkAndShowWindowPinnedMsg()Z
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v0, "activity"

    .line 147
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mActivityManager:Landroid/app/ActivityManager;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndShowWindowPinnedMsg() -:- isWindowPinned ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPickerDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    const-string v0, "accessibility"

    .line 153
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_1
    const/4 v0, 0x1

    .line 157
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android"

    const-string v3, "string"

    if-eqz v1, :cond_3

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "tw_lock_to_app_toast_accessible"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "tw_lock_to_app_toast"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "lock_to_app_toast_accessible"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "lock_to_app_toast"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    if-eqz v2, :cond_5

    .line 171
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    const/4 v2, 0x0

    .line 172
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    .line 174
    :cond_5
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    .line 175
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private collapseQuickPanel()V
    .locals 2

    const-string v0, "statusbar"

    .line 98
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 102
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.kidsplat.quickpanel.PANEL_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private requestSystemKeyEvents(Z)V
    .locals 3

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    if-nez v1, :cond_0

    .line 134
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 137
    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    const/16 v1, 0xbb

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    goto :goto_0

    :cond_1
    const-string p0, "WifiPickerDialog"

    const-string p1, "Windowmanager is not yet initialized."

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getNextButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNextButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "WifiPickerDialog"

    if-eqz p1, :cond_0

    const-string v1, "key_finish"

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "not allow to show the picker dialog when device theme was changed"

    .line 59
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 69
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;-><init>()V

    .line 73
    invoke-virtual {v1, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 74
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiPickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->setWifiDialogListener(Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$WifiDialogListener;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 121
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->checkAndShowWindowPinnedMsg()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "WifiPickerDialog"

    const-string p1, "key consumed when window is pinned"

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 125
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->collapseQuickPanel()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "key_finish"

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
