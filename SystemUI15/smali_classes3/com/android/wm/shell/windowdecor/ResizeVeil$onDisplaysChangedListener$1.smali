.class public final Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final synthetic $taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/ResizeVeil;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;->$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;->$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->displayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;->$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->setupResizeVeil(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
