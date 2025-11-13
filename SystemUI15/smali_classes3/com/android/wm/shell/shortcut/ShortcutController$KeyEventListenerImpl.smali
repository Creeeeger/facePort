.class public final Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;
.super Lcom/samsung/android/multiwindow/IKeyEventListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/shortcut/ShortcutController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IKeyEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendShortcutKeyWithFocusedTask(ILandroid/view/KeyEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v1, v0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    const-string v2, "ShortcutController"

    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v0, v0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo p0, "sendShortcutKeyWithFocusedTask: AppsEdge is running on top"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v0, v0, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;

    if-nez v0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sendShortcutKeyWithFocusedTask: Not found the policy : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-boolean v1, v0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mSupportMultiSplitStatus:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v1, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo p0, "sendShortcutKeyWithFocusedTask: The 3 split-mode is running"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v1, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_8

    const-string/jumbo p0, "sendShortcutKeyWithFocusedTask: There is no running task."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    iput-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    if-eqz v1, :cond_9

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    :cond_9
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->handleShortCutKeys(Landroid/view/KeyEvent;)V

    return-void

    :cond_a
    :goto_1
    const-string/jumbo p0, "sendShortcutKeyWithFocusedTask: Not set up normally"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
