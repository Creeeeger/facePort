.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic $visibleTasksCount:I

.field public final synthetic $visibleTasksListener:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$visibleTasksListener:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    iput p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$displayId:I

    iput p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$visibleTasksCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$visibleTasksListener:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$displayId:I

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$visibleTasksCount:I

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;->onTasksVisibilityChanged(II)V

    return-void
.end method
