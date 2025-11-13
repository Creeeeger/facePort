.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipInputConsumer;

.field public final synthetic f$1:Landroid/view/InputChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipInputConsumer;Landroid/view/InputChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipInputConsumer;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda0;->f$1:Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipInputConsumer;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda0;->f$1:Landroid/view/InputChannel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$InputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$InputEventReceiver;-><init>(Lcom/android/wm/shell/pip2/phone/PipInputConsumer;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipInputConsumer$InputEventReceiver;

    iget-object p0, v0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mRegistrationListener:Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
