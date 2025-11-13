.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;
.super Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field public controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

.field public final listener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1;

.field public final remoteListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->listener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1;

    new-instance p1, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;)V

    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$2;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$2;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->remoteListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->remoteListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    return-void
.end method
