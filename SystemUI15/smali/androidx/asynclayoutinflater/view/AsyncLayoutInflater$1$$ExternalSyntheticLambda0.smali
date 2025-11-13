.class public final synthetic Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;I)V
    .locals 0

    iput p3, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;->f$1:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    iget-object p0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;->f$1:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->triggerCallbacks(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;

    iget-object p0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1$$ExternalSyntheticLambda0;->f$1:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    iget-object v0, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v0, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflateThread:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-static {p0, v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->triggerCallbacks(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
