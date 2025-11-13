.class Lcom/samsung/android/cover/CoverListenerDelegate;
.super Lcom/samsung/android/cover/ICoverManagerCallback$Stub;
.source "CoverListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "CoverManager"


# instance fields
.field private greylist mHandler:Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;

.field private final greylist mListener:Lcom/samsung/android/cover/CoverManager$StateListener;


# direct methods
.method constructor greylist <init>(Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

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
    new-instance v1, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$StateListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;

    .line 36
    return-void
.end method


# virtual methods
.method public greylist coverCallback(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 50
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 51
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    return-void
.end method

.method public greylist getListener()Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method public greylist getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
