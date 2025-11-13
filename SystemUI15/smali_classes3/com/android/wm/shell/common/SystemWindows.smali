.class public final Lcom/android/wm/shell/common/SystemWindows;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayListener:Lcom/android/wm/shell/common/SystemWindows$1;

.field public final mPerDisplay:Landroid/util/SparseArray;

.field public final mViewRoots:Ljava/util/HashMap;

.field public final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    new-instance v0, Lcom/android/wm/shell/common/SystemWindows$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/SystemWindows$1;-><init>(Lcom/android/wm/shell/common/SystemWindows;)V

    iput-object p2, p0, Lcom/android/wm/shell/common/SystemWindows;->mWmService:Landroid/view/IWindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/SystemWindows;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    :try_start_0
    new-instance p1, Lcom/android/wm/shell/common/SystemWindows$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/SystemWindows$2;-><init>(Lcom/android/wm/shell/common/SystemWindows;)V

    invoke-interface {p2, p1}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemWindows"

    const-string p2, "Unable to create layer"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;-><init>(Lcom/android/wm/shell/common/SystemWindows;I)V

    iget-object p0, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object p0, v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    iget v2, v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mDisplayId:I

    const-string v3, "SystemWindows"

    iget-object v4, v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->this$0:Lcom/android/wm/shell/common/SystemWindows;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v10, Lcom/android/wm/shell/common/SystemWindows$ContainerWindow;

    invoke-direct {v10}, Lcom/android/wm/shell/common/SystemWindows$ContainerWindow;-><init>()V

    const/4 p0, 0x0

    :try_start_0
    iget-object v5, v4, Lcom/android/wm/shell/common/SystemWindows;->mWmService:Landroid/view/IWindowManager;

    invoke-interface {v5, v2, v10, v1}, Landroid/view/IWindowManager;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v5

    goto :goto_0

    :catch_0
    move-object v9, p0

    :goto_0
    if-nez v9, :cond_2

    const-string v1, "Unable to get root surfacecontrol for systemui"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p0, v4, Lcom/android/wm/shell/common/SystemWindows;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v8

    new-instance p0, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    iget-object v6, v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->this$0:Lcom/android/wm/shell/common/SystemWindows;

    iget v7, v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mDisplayId:I

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;-><init>(Lcom/android/wm/shell/common/SystemWindows;ILandroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/common/SystemWindows$ContainerWindow;)V

    iget-object v5, v0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    if-nez p0, :cond_3

    const-string p0, "Unable to create systemui root"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v1, v4, Lcom/android/wm/shell/common/SystemWindows;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v1, p0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, p1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, v4, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public final getFocusGrantToken(Landroid/view/View;)Landroid/window/InputTransferToken;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControlViewHost;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t get focus grant token since view does not exist in SystemWindow:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemWindows"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object p0

    return-object p0
.end method

.method public final getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    iget-object v3, v3, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    iget-object v3, v3, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;->getSurfaceControlForWindow(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setShellRootAccessibilityWindow(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    return-void
.end method
