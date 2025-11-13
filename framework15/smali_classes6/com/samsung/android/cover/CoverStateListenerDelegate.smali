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
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    nop

    new-instance v1, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    return-void
.end method


# virtual methods
.method public greylist getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;
    .locals 1

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

    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist onCoverAttachStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist onCoverSwitchStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
