.class Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "CoverListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final greylist mListener:Lcom/samsung/android/cover/CoverManager$StateListener;


# direct methods
.method constructor greylist <init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 76
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    iput-object p2, p0, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    .line 84
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/CoverManager$StateListener;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 87
    :cond_0
    const-string v1, "CoverManager"

    const-string v2, "coverState : null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_1
    :goto_0
    return-void
.end method
