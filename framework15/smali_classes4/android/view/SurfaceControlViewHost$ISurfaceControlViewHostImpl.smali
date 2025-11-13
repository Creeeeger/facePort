.class final Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;
.super Landroid/view/ISurfaceControlViewHost$Stub;
.source "SurfaceControlViewHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ISurfaceControlViewHostImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static synthetic blacklist $r8$lambda$3Dz5mk_0BCEoPRvSCnMu9xz2HU8(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$getSurfaceSyncGroup$3(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7Uhnst8rp1e5gEbmr6-LpRMnLak(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$onDispatchDetachedFromWindow$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y-OzKnN4Ihxq3UqHNlFDCfxlslk(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/view/ISurfaceControlViewHostParent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$attachParentInterface$4(Landroid/view/ISurfaceControlViewHostParent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$is1DNNUCbmd75tbO8gwhF7qowSo(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tVHQlnlC-Q1qVtrLQ4BhlPaSb7Q(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$onInsetsChanged$2(Landroid/graphics/Rect;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/SurfaceControlViewHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-direct {p0}, Landroid/view/ISurfaceControlViewHost$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;)V

    return-void
.end method

.method private synthetic blacklist lambda$attachParentInterface$4(Landroid/view/ISurfaceControlViewHostParent;)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowlessWindowManager;->setParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V

    return-void
.end method

.method private synthetic blacklist lambda$getSurfaceSyncGroup$3(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;

    move-result-object v0

    iget-object v0, v0, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->forceWmRelayout()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onDispatchDetachedFromWindow$1()V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    return-void
.end method

.method private synthetic blacklist lambda$onInsetsChanged$2(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setOverrideInsetsFrame(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public blacklist attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SurfaceControlViewHost"

    const-string v1, "attachParentInterface called but mViewRoot is null. return here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/view/ISurfaceControlViewHostParent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;
    .locals 4

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v2}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v1}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;

    move-result-object v1

    iget-object v1, v1, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v1}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v2, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ISurfaceSyncGroup;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SurfaceControlViewHost"

    const-string v3, "Failed to get SurfaceSyncGroup for SCVH"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onDispatchDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowlessWindowManager;->setInsetsState(Landroid/view/InsetsState;)V

    return-void
.end method
