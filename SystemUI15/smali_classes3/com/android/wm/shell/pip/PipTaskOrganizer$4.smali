.class public final Lcom/android/wm/shell/pip/PipTaskOrganizer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final synthetic val$callback:Ljava/lang/Runnable;

.field public final synthetic val$surface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$surface:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$surface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removeContentOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    return-void
.end method
