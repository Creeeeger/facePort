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
.method private constructor blacklist <init>(Landroid/view/SurfaceControlViewHost;)V
    .locals 0

    .line 65
    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-direct {p0}, Landroid/view/ISurfaceControlViewHost$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onConfigurationChanged$0$android-view-SurfaceControlViewHost$ISurfaceControlViewHostImpl(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 72
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->forceWmRelayout()V

    .line 78
    :cond_1
    return-void
.end method

.method synthetic blacklist lambda$onDispatchDetachedFromWindow$1$android-view-SurfaceControlViewHost$ISurfaceControlViewHostImpl()V
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 88
    return-void
.end method

.method synthetic blacklist lambda$onInsetsChanged$2$android-view-SurfaceControlViewHost$ISurfaceControlViewHostImpl(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 95
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setOverrideInsetsFrame(Landroid/graphics/Rect;)V

    .line 96
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 68
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public blacklist onDispatchDetachedFromWindow()V
    .locals 2

    .line 83
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public blacklist onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 93
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowlessWindowManager;->setInsetsState(Landroid/view/InsetsState;)V

    .line 99
    return-void
.end method
