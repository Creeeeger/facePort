.class final Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;
.super Landroid/os/Handler;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XrStateListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Lcom/samsung/android/vr/GearVrManager$XrStateListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager$XrStateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$XrStateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 962
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

    .line 963
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$XrStateListener;

    .line 964
    return-void
.end method


# virtual methods
.method public blacklist clearEvents()V
    .locals 1

    .line 982
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 983
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 987
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1002
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1003
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$XrStateListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/GearVrManager$XrStateListener;->onFocusedDisplayChanged(I)V

    .line 1004
    goto :goto_0

    .line 996
    .end local v0    # "displayId":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 997
    .local v0, "taskId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 998
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$XrStateListener;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/vr/GearVrManager$XrStateListener;->onActivityResumeChanged(ILandroid/os/Bundle;)V

    .line 999
    goto :goto_0

    .line 989
    .end local v0    # "taskId":I
    .end local v1    # "extras":Landroid/os/Bundle;
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 990
    .local v0, "interceptedDisplayId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 991
    .local v1, "reason":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 992
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$XrStateListener;

    invoke-interface {v3, v0, v1, v2}, Lcom/samsung/android/vr/GearVrManager$XrStateListener;->onActivityIntercepted(IILandroid/os/Bundle;)V

    .line 993
    nop

    .line 1007
    .end local v0    # "interceptedDisplayId":I
    .end local v1    # "reason":I
    .end local v2    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendActivityResumeChangedEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 972
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 973
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 974
    return-void
.end method

.method public blacklist sendFocusedDisplayChangedEvent(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 977
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 978
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 979
    return-void
.end method

.method public blacklist sendStartActivityInterceptedEvent(IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "interceptedDisplayId"    # I
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 967
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 968
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 969
    return-void
.end method
