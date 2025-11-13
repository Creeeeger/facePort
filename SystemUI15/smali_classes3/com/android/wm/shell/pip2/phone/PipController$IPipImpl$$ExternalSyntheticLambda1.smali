.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$3:Landroid/view/SurfaceControl;

.field public final synthetic f$4:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/wm/shell/pip2/phone/PipController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, -0x57909c52804ccd0L

    const/4 v6, 0x0

    const-string v7, "onSwipePipToHomeAnimationStart: %s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "swipe_to_pip_overlay"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "pip_app_bounds"

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    if-eqz v2, :cond_1

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p1, Lcom/android/wm/shell/pip2/phone/PipController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v0, p0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->reparentChildSurfaceToTask(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    const v0, 0x7fffffff

    invoke-virtual {p0, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipController;->mPipRecentsAnimationListener:Lcom/android/wm/shell/pip2/phone/PipController$PipAnimationListener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip2/phone/PipController$PipAnimationListener;->onPipAnimationStarted()V

    return-void
.end method
