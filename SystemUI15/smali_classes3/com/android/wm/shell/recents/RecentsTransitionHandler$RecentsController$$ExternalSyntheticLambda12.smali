.class public final synthetic Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;->f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;->f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda12;->f$2:I

    check-cast p1, Landroid/view/SurfaceControl;

    iget-object v3, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mBackgroundColor:Landroid/graphics/Color;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    int-to-long v3, p0

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0xb46515a738a3f34L

    const/4 v8, 0x1

    const-string v9, "  adding background color to layer=%d"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string/jumbo v4, "recents_background"

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mBackgroundColor:Landroid/graphics/Color;

    invoke-virtual {v1}, Landroid/graphics/Color;->red()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Color;->green()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Color;->blue()F

    move-result v1

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v4, v5, v0

    const/4 v0, 0x2

    aput v1, v5, v0

    invoke-virtual {v2, p1, v5}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-void
.end method
