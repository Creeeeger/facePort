.class public final Lcom/android/wm/shell/shortcut/ShortcutDownKeyLaunchPolicy;
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
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskById(I)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->minimizeTask(Landroid/window/WindowContainerToken;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v1

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p1, v3, v2, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->moveToFreeform(Landroid/window/WindowContainerToken;ZI)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    :cond_4
    const-string p0, "2004"

    const-string p1, "From Keyboard shortcut"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/shortcut/ShortcutController;->applyMaxOrMinHeight(Z)V

    :cond_6
    :goto_1
    return-void
.end method
