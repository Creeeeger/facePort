.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$moveToDesktop$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $taskId:I

.field public final synthetic $transitionSource:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$moveToDesktop$1;->$taskId:I

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$moveToDesktop$1;->$transitionSource:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$moveToDesktop$1;->$taskId:I

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$moveToDesktop$1;->$transitionSource:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    invoke-static {p1, v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToDesktop$default(Lcom/android/wm/shell/desktopmode/DesktopTasksController;ILcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    return-void
.end method
