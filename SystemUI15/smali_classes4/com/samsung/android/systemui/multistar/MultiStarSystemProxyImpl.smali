.class public final Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;


# instance fields
.field public final mIam:Landroid/app/IActivityManager;

.field public final mIwm:Landroid/view/IWindowManager;

.field public final mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreen;

    return-void
.end method


# virtual methods
.method public final getStableInsets()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setDividerResizeMode(Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreen;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;ZI)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setLongLiveApp(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->setLongLiveApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final startDismissSplit(Z)V
    .locals 0

    return-void
.end method

.method public final toggleSplitScreen()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreen;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
