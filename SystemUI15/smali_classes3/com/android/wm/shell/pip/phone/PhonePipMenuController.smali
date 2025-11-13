.class public final Lcom/android/wm/shell/pip/phone/PhonePipMenuController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/pip/PipMenuController;


# instance fields
.field public mAppActions:Ljava/util/List;

.field public mCloseAction:Landroid/app/RemoteAction;

.field public final mContext:Landroid/content/Context;

.field public mIsPipMenuFocused:Z

.field public mLastDensityDpi:I

.field public mLastLocale:Ljava/util/Locale;

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMediaActionListener:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

.field public mMediaActions:Ljava/util/List;

.field public final mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

.field public mMenuState:I

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public final mSplitScreenController:Ljava/util/Optional;

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipMediaController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/pip/PipBoundsState;",
            "Lcom/android/wm/shell/common/pip/PipMediaController;",
            "Lcom/android/wm/shell/common/SystemWindows;",
            "Lcom/android/wm/shell/common/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPipMenuFocused:Z

    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSplitScreenController:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final attach(Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    return-void
.end method

.method public final attachPipMenuView()V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLastDensityDpi:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLastLocale:Ljava/util/Locale;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSplitScreenController:Ljava/util/Optional;

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/pip/phone/PipMenuView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Ljava/util/Optional;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    new-instance v3, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Lcom/android/wm/shell/common/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuActions()V

    return-void
.end method

.method public final checkPipMenuState()Z
    .locals 8

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const-string p0, "Not going to move PiP, either menu or its parent is not created"

    const-string v1, "PhonePipMenuController"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "%s: Not going to move PiP, either menu or its parent is not created."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x18ba4b49973f37d3L    # 1.475369879466701E-189

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final detach()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPipMenuFocused:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "clearWindowFocus()"

    const-string v3, "PhonePipMenuController"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPipMenuFocused:Z

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/window/InputTransferToken;

    move-result-object v5

    invoke-interface {v4, v2, v5, v0}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Unable to update focus"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    :goto_1
    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final getEstimatedMinMenuSize()Landroid/util/Size;
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ccf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070cef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cd8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070cd9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public final hideMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu$1()V

    :cond_0
    return-void
.end method

.method public final hideMenu(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hideMenu() state="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isMenuVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " animationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " resize=false callers=\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    const-string v5, "    "

    invoke-static {v4, v5}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PhonePipMenuController"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v6, 0x0

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v5}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v7, "PhonePipMenuController"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v18

    const-wide v14, -0x45c244c228e8c541L    # -3.752631818412688E-28

    const/16 v16, 0x0

    const-string v17, "%s: hideMenu() state=%s isMenuVisible=%s animationType=%s resize=%s callers=\n%s"

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZI)V

    :cond_1
    return-void
.end method

.method public final isMenuVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->checkPipMenuState()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    return-void
.end method

.method public final pokeMenu()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "PhonePipMenuController"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v5, 0xc

    const-string v6, "%s: pokeMenu() isMenuVisible=%b"

    const-wide v3, 0x593014d2874430b4L    # 4.152603156181684E121

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->checkPipMenuState()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    return-void
.end method

.method public final setSplitMenuEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateEnterSplitButtonIcon()V

    :cond_0
    return-void
.end method

.method public final showMenuInternal(Landroid/graphics/Rect;ZZZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMenu() state=1 isMenuVisible="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " allowMenuTimeout=true willResizeMenu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " withDelay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " showResizeHandle=false stackBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " callers=\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    const-string v6, "    "

    invoke-static {v5, v6}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "PhonePipMenuController"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v8, 0x0

    aget-boolean v4, v4, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v6}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v9, "PhonePipMenuController"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/Object;

    move-result-object v22

    const-wide v18, -0x4a86845b55b3cb6dL    # -4.256875827416994E-51

    const/16 v20, 0x0

    const-string v21, "%s: showMenu() state=%s isMenuVisible=%s allowMenuTimeout=%s willResizeMenu=%s withDelay=%s showResizeHandle=%s callers=\n%s"

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->checkPipMenuState()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-boolean v4, v4, Lcom/android/wm/shell/pip/phone/PipMenuView;->mIsExpanding:Z

    if-eqz v4, :cond_2

    const-string/jumbo v0, "showMenuInternal: skip, reason=expanding"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v0, "showMenuInternal: skip, reason=stashed"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v4, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->isInMotion()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v0, "showMenuInternal: skip, reason=in_motion"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/pip/phone/PipMenuView;->showMenu(Landroid/graphics/Rect;ZZZ)V

    return-void
.end method

.method public final showMenuWithPossibleDelay(Landroid/graphics/Rect;ZZ)V
    .locals 8

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "PhonePipMenuController"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "%s: fadeOutMenu() isMenuVisible=%b"

    const-wide v3, -0x14a4568610c1c63aL    # -1.420956716820258E209

    const/16 v5, 0xc

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(Landroid/graphics/Rect;ZZZ)V

    return-void
.end method

.method public final updateMenuActions()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActions:Ljava/util/List;

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->setActions(Landroid/graphics/Rect;Ljava/util/List;Landroid/app/RemoteAction;)V

    :cond_1
    return-void
.end method

.method public final updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/android/wm/shell/common/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v1, v1, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
