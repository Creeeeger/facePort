.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$2;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$2;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    sget v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-object v0
.end method
