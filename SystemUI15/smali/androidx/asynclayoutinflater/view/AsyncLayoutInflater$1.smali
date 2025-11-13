.class public final Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;


# direct methods
.method public constructor <init>(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;)V
    .locals 0

    iput-object p1, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    iget-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v2, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    :cond_0
    iget-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    new-instance v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object p0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflateThread:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-static {p1, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->triggerCallbacks(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
