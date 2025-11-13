.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
.super Ljava/lang/Object;
.source "SContextManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextListenerDelegate"
.end annotation


# instance fields
.field private blacklist mDereisgeredListener:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIsHistoryData:Z

.field private blacklist mListener:Landroid/hardware/scontext/SContextListener;

.field final synthetic blacklist this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDereisgeredListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mDereisgeredListener:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHistoryData(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mDereisgeredListener:Z

    iput-object p2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    :goto_0
    iput-boolean p4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;-><init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mDereisgeredListener:Z

    return-void
.end method

.method public blacklist getListener()Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method public blacklist getListenerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    invoke-interface {v0}, Landroid/hardware/scontext/SContextListener;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public declared-synchronized whitelist onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    new-instance v3, Landroid/hardware/scontext/SContextEvent;

    invoke-direct {v3}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    invoke-virtual {v3, v0, v1}, Landroid/hardware/scontext/SContextEvent;->setSContextEvent(ILandroid/os/Bundle;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
