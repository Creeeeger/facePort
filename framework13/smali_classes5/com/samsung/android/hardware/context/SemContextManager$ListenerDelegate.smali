.class Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
.super Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private blacklist mDereisgeredListener:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsHistoryData:Z

.field private blacklist mListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field final synthetic blacklist this$0:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDereisgeredListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mDereisgeredListener:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHistoryData(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsHistoryData(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1241
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;-><init>()V

    .line 1242
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$fputmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;Ljava/lang/String;)V

    .line 1243
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mDereisgeredListener:Z

    .line 1244
    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V

    .line 1245
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Z)V
    .locals 0
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p3, "isHistoryData"    # Z

    .line 1247
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;-><init>()V

    .line 1248
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mDereisgeredListener:Z

    .line 1249
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V

    .line 1250
    return-void
.end method

.method private blacklist set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isHistoryData"    # Z

    .line 1253
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 1254
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$fgetmMainLooper(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;

    move-result-object v0

    .line 1255
    .local v0, "mainLooper":Landroid/os/Looper;
    :goto_0
    iput-boolean p3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    .line 1256
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;-><init>(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1288
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 1290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mDereisgeredListener:Z

    .line 1291
    return-void
.end method

.method public blacklist getListener()Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object v0
.end method

.method public blacklist getListenerInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$fgetmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$fgetmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist semContextCallback(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1310
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1311
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1312
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1313
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1315
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    monitor-exit p0

    return-void

    .line 1309
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    .end local p1    # "event":Lcom/samsung/android/hardware/context/SemContextEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
