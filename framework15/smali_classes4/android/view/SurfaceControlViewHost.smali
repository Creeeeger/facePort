.class public Landroid/view/SurfaceControlViewHost;
.super Ljava/lang/Object;
.source "SurfaceControlViewHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;,
        Landroid/view/SurfaceControlViewHost$SurfacePackage;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlViewHost"


# instance fields
.field private blacklist mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

.field private blacklist mReleased:Z

.field private blacklist mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private final blacklist mWm:Landroid/view/WindowlessWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V
    .locals 2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0, p3}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    :goto_0
    const-string/jumbo v1, "untracked"

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    iget-object v0, p3, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v0, Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v2, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v2}, Landroid/view/WindowlessWindowLayout;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p4}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;)V
    .locals 1

    const-string/jumbo v0, "untracked"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "SurfaceControlViewHost"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceControlViewHost["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/WindowlessWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2, p3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v0, Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v2, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v2}, Landroid/view/WindowlessWindowLayout;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p4}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-void
.end method

.method private blacklist addWindowToken(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-void
.end method

.method private blacklist doRelease(Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->die(Z)Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerGlobal;->removeWindowlessRoot(Landroid/view/ViewRootImpl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-void
.end method

.method static synthetic blacklist lambda$setConfigCallback$0(Landroid/os/IBinder;Landroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 3

    instance-of v0, p0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/window/WindowTokenClient;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    :cond_0
    return-void
.end method

.method private blacklist setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;Landroid/view/Display;)V

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlViewHost;->doRelease(Z)V

    return-void
.end method

.method public blacklist getInputTransferToken()Landroid/window/InputTransferToken;
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowlessWindowManager;->getInputTransferToken(Landroid/os/IBinder;)Landroid/window/InputTransferToken;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method public whitelist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 5

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "getSurfacePackage"

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    iget-object v4, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/window/InputTransferToken;Landroid/view/ISurfaceControlViewHost;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getWindowToken()Landroid/view/IWindow;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    return-object v0
.end method

.method public blacklist getWindowlessWM()Landroid/view/WindowlessWindowManager;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object v0
.end method

.method public whitelist relayout(II)V
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    const-string/jumbo v2, "scvh_relayout"

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/WindowlessWindowManager;->setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V

    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public whitelist release()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlViewHost;->doRelease(Z)V

    return-void
.end method

.method public whitelist setView(Landroid/view/View;II)V
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public blacklist setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p2}, Landroid/view/SurfaceControlViewHost;->addWindowToken(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;-><init>(Landroid/view/WindowlessWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->setBackKeyCallbackForWindowlessWindow(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public whitelist transferTouchGestureToHost()Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v3, v3, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v1

    iget-object v4, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v4, v4, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const-string v4, "SurfaceControlViewHost"

    const-string v5, "Failed to transferTouchGestureToHost. Host or embedded token is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
