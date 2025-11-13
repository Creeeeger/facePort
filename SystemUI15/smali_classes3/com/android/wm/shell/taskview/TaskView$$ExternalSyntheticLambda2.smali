.class public final synthetic Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/taskview/TaskView;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskView;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/taskview/TaskView;

    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput p3, p0, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/taskview/TaskView;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method
