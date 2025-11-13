.class public Lcom/samsung/android/globalactions/util/HandlerUtil;
.super Ljava/lang/Object;
.source "HandlerUtil.java"


# instance fields
.field blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist obtainMessage(ILjava/lang/String;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public blacklist post(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public blacklist removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
