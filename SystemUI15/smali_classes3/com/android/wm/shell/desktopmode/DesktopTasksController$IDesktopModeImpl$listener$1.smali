.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTasksVisibilityChanged(II)V
    .locals 4

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "IDesktopModeImpl: onVisibilityChanged display=%d visible=%d"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->remoteListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1$onTasksVisibilityChanged$1;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1$onTasksVisibilityChanged$1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    return-void
.end method
