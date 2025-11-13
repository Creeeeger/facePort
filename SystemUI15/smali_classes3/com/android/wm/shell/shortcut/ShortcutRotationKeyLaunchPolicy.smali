.class public final Lcom/android/wm/shell/shortcut/ShortcutRotationKeyLaunchPolicy;
.super Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;Z)V

    return-void
.end method


# virtual methods
.method public final handleShortCutKeys(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/wm/shell/shortcut/ShortcutController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/shortcut/ShortcutController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/wm/shell/shortcut/ShortcutController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/shortcut/ShortcutController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
