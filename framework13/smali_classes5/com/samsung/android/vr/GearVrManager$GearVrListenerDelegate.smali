.class final Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;
.super Landroid/os/Handler;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GearVrListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Lcom/samsung/android/vr/GearVrManager$GearVrListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager$GearVrListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$GearVrListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 934
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

    .line 935
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$GearVrListener;

    .line 936
    return-void
.end method


# virtual methods
.method public blacklist clearEvents()V
    .locals 1

    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 945
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 949
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 951
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$GearVrListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/vr/GearVrManager$GearVrListener;->onGearVrStateChanged(II)V

    .line 955
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendGearVrEvent(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 939
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 940
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 941
    return-void
.end method
