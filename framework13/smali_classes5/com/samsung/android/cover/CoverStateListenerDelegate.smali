.class Lcom/samsung/android/cover/CoverStateListenerDelegate;
.super Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;
.source "CoverStateListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final greylist MSG_LISTEN_COVER_ATTACH_STATE_CHANGE:I = 0x1

.field private static final greylist MSG_LISTEN_COVER_SWITCH_STATE_CHANGE:I = 0x0

.field public static final greylist TYPE_COVER_STATE_LISTENER:I = 0x2


# instance fields
.field private greylist mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

.field private final greylist mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;


# direct methods
.method constructor greylist <init>(Lcom/samsung/android/cover/CoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 32
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    nop

    .line 35
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    .line 36
    return-void
.end method


# virtual methods
.method public greylist getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    return-object v0
.end method

.method public greylist getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist onCoverAttachStateChanged(Z)V
    .locals 3
    .param p1, "attached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    return-void
.end method

.method public greylist onCoverSwitchStateChanged(Z)V
    .locals 2
    .param p1, "switchState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void
.end method
