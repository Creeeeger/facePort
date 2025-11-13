.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateTaskExclusionRegions$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateTaskExclusionRegions$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateTaskExclusionRegions$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->access$calculateDesktopExclusionRegion(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)Landroid/graphics/Region;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
