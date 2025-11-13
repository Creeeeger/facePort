.class Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "NfcLedCoverTouchListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final greylist MSG_LISTEN_COVER_TOUCH_ACCEPT:I = 0x0

.field private static final greylist MSG_LISTEN_COVER_TOUCH_REJECT:I = 0x1

.field private static final greylist MSG_LISTEN_COVER_TOUCH_REJECT_TAP_LEFT:I = 0x2

.field private static final greylist MSG_LISTEN_COVER_TOUCH_REJECT_TAP_MID:I = 0x3

.field private static final greylist MSG_LISTEN_COVER_TOUCH_REJECT_TAP_RIGHT:I = 0x4


# instance fields
.field private greylist mHandler:Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

.field private greylist mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;


# direct methods
.method constructor greylist <init>(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .line 27
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    nop

    .line 30
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    .line 31
    return-void
.end method


# virtual methods
.method public greylist getListener()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    return-object v0
.end method

.method public greylist onCoverTapLeft()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public greylist onCoverTapMid()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public greylist onCoverTapRight()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public greylist onCoverTouchAccept()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    return-void
.end method

.method public greylist onCoverTouchReject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 45
    return-void
.end method

.method public greylist onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method
