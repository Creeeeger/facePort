.class Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "LedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final greylist MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private greylist mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

.field private greylist mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;


# direct methods
.method constructor greylist <init>(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    nop

    new-instance v1, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    return-void
.end method


# virtual methods
.method public greylist getListener()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    return-object v0
.end method

.method public greylist onCoverTapLeft()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onCoverTapMid()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onCoverTapRight()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onCoverTouchAccept()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onCoverTouchReject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
