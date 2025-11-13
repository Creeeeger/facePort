.class public final synthetic Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipInputConsumer;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mRegistrationListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mRegistrationListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
