.class Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "CoverPowerKeyListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;,
        Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$SystemEvents;
    }
.end annotation


# static fields
.field private static final greylist MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private greylist mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

.field private greylist mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;


# direct methods
.method constructor greylist <init>(Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    .line 42
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 44
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    .line 45
    return-void
.end method


# virtual methods
.method public greylist getListener()Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    return-object v0
.end method

.method public greylist onCoverTapLeft()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public greylist onCoverTapMid()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public greylist onCoverTapRight()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public greylist onCoverTouchAccept()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public greylist onCoverTouchReject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public greylist onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;->sendEmptyMessage(I)Z

    .line 81
    :cond_0
    return-void
.end method
