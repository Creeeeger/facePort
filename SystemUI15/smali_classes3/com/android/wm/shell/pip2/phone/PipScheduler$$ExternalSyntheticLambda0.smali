.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipScheduler;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipScheduler;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda0;->f$1:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda0;->f$1:Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/wm/shell/pip/PipTransitionController;->startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V

    return-void
.end method
