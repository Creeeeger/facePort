.class public final Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
.super Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

.field public final mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    new-instance p3, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    invoke-direct {p3, p2, p1}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    return-void
.end method


# virtual methods
.method public final getListenerInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onCoverAttachStateChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onCoverSwitchStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
