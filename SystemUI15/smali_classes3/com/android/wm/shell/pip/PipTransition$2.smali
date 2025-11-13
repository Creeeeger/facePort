.class public final Lcom/android/wm/shell/pip/PipTransition$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic val$leash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/view/SurfaceControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$2;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransition$2;->val$leash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition$2;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition$2;->val$leash:Landroid/view/SurfaceControl;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$2;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/pip/PipMenuController;->setSplitMenuEnabled(Z)V

    return-void
.end method
