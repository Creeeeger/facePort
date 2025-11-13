.class Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "CoverStateListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverStateListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final greylist mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;


# direct methods
.method constructor greylist <init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 80
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    iput-object p2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    if-eqz v0, :cond_2

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->onCoverAttachStateChanged(Z)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    .line 96
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
