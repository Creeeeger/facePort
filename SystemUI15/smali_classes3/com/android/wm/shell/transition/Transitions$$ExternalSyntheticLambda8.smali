.class public final synthetic Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/transition/Transitions;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;->f$1:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
