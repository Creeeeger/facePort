.class public final Lcom/android/wm/shell/shortcut/ShortcutRightKeyLaunchPolicy;
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

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->toggleSplitScreen(I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    if-eqz p0, :cond_0

    const/4 v2, 0x2

    :cond_0
    const-string p0, "1000"

    const-string p1, "From Keyboard shortcut"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    const/16 v0, 0x20

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    move-result p1

    iget-object v2, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "ShortcutController"

    const-string v2, "Failed to get new DisplayLayout."

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    :cond_6
    :goto_2
    return-void
.end method
