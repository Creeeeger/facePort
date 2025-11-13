.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->isActive(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->updateDesktopModeActive(Z)V

    return-void
.end method
