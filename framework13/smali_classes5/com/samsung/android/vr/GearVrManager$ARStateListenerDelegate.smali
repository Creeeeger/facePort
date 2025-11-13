.class final Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;
.super Landroid/os/Handler;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ARStateListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Lcom/samsung/android/vr/GearVrManager$ARStateListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager$ARStateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$ARStateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1110
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1111
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$ARStateListener;

    .line 1112
    return-void
.end method


# virtual methods
.method public blacklist clearEvents()V
    .locals 1

    .line 1120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1121
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1127
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$ARStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/vr/GearVrManager$ARStateListener;->onARStateChanged(II)V

    .line 1131
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendAREvent(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 1115
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1116
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1117
    return-void
.end method
