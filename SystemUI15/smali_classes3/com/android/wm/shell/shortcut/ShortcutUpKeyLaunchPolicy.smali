.class public final Lcom/android/wm/shell/shortcut/ShortcutUpKeyLaunchPolicy;
.super Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;Z)V

    return-void
.end method


# virtual methods
.method public final handleShortCutKeys(Landroid/view/KeyEvent;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    if-eqz p0, :cond_1

    const/4 v2, 0x2

    :cond_1
    const-string p0, "2090"

    const-string p1, "From Keyboard shortcut"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/shortcut/ShortcutController;->applyMaxOrMinHeight(Z)V

    :cond_3
    :goto_1
    return-void
.end method
