.class public final Lcom/android/wm/shell/shortcut/ShortcutController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mIsNewDexMode:Z

.field public final mKeyEventListener:Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mShortCutPolicyMap:Landroid/util/SparseArray;

.field public final mSplitScreenController:Ljava/util/Optional;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            "Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    iput-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mKeyEventListener:Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    iput-object p5, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p6, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p7, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    iput-object p8, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    return-void
.end method


# virtual methods
.method public final applyMaxOrMinHeight(Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    instance-of v1, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-nez v1, :cond_1

    const-string v0, "ShortcutController"

    const-string v1, "applyMinHeightBounds: window decoration view model is not proper type."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v5, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object v4

    iget-object v6, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v4, v6, v7, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object v4, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    if-eqz p1, :cond_6

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v5, :cond_4

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getCaptionVisibleHeight$1()I

    move-result v5

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v3

    :goto_3
    add-int/2addr p1, v5

    iput p1, v4, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result v3

    :goto_4
    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_6
    iget p1, v1, Landroid/graphics/Rect;->top:I

    iput p1, v4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-gez v3, :cond_7

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v3

    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    int-to-float v3, v3

    const v5, 0x3bcccccd    # 0.00625f

    mul-float/2addr v3, v5

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    goto :goto_5

    :cond_7
    int-to-float v2, v3

    :goto_5
    float-to-int v2, v2

    add-int/2addr p1, v2

    iput p1, v4, Landroid/graphics/Rect;->bottom:I

    :goto_6
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final moveFreeformToSplit(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->moveFreeformToSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    const-string p1, "1000"

    const-string v0, "From Keyboard shortcut"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
