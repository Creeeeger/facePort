.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$setTaskListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $listener:Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$setTaskListener$1;->$listener:Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$setTaskListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$setTaskListener$1;->$listener:Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$setTaskListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    iget-object v1, v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->remoteListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    if-nez v1, :cond_0

    move-object v1, v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$setTaskListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->remoteListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    :cond_3
    return-void
.end method
