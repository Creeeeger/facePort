.class public final Lcom/android/wm/shell/common/MultiWindowOverheatUI;
.super Landroid/app/AlertDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDismissReceiver:Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f140591

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;-><init>(Lcom/android/wm/shell/common/MultiWindowOverheatUI;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/MultiWindowOverheatUI;->mDismissReceiver:Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f130cd4

    goto :goto_0

    :cond_0
    const v0, 0x7f130cd3

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f130549

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7d8

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method public static showIfNeeded(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMWDisableRequesters()Ljava/util/List;

    move-result-object v0

    const-string v1, "MWOverheatDialog"

    if-eqz v0, :cond_0

    const-string v2, "SSRM"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "requester is not SSRM"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v0, "show mw overheat dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/wm/shell/common/MultiWindowOverheatUI;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/MultiWindowOverheatUI;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/common/MultiWindowOverheatUI;->mDismissReceiver:Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/MultiWindowOverheatUI;->mDismissReceiver:Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
