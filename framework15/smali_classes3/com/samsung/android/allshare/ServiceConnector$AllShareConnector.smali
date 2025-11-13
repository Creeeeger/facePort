.class final Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/samsung/android/allshare/IAllShareConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllShareConnector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    }
.end annotation


# static fields
.field public static final blacklist INVALID_REQUEST_ID:J = -0x1L

.field private static final blacklist TAG:Ljava/lang/String; = "AllShareConnector"


# instance fields
.field private blacklist mAllShareConnection:Landroid/content/ServiceConnection;

.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mConnecting:Z

.field private blacklist mConnectionCallback:Landroid/os/Handler$Callback;

.field private blacklist mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

.field private blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEventHandlerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mID:Ljava/lang/String;

.field private blacklist mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSubscriberTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConstData(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriberTag(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmComponentName(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmISubscriber(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Lcom/sec/android/allshare/iface/ISubscriber;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monConnected(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->onConnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDisconnected(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->onDisconnected()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;-><init>(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;-><init>(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    invoke-direct {v1}, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    return-void
.end method

.method private blacklist addHandlerToHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist bindAllShareService()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : bindAllShareService..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : bindAllShareService error - context is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    const-string v5, "com.samsung.android.allshare.service.mediashare"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->startAllShareLauncher()Z

    iput-boolean v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : bindAllShareService FAIL - check if app use ApplicationContext or not"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist notifyAllShareDisable()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_DISCONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist notifyAllShareEnable()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_CONNECTED:Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onConnected()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnected to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->notifyAllShareEnable()V

    return-void
.end method

.method private blacklist onDisconnected()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->notifyAllShareDisable()V

    return-void
.end method

.method private blacklist registerSvcCastReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registerSvcCastReceiver error - context is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllShareConnector"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v2, v2, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v2, v2, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private blacklist removeHandlerFromHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist startAllShareLauncher()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "AllShareConnector"

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startAllShareLauncher error - context is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    iget-object v4, v4, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    const-string v5, "com.samsung.android.allshare.service.mediashare"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : AllShare Service is not installed yet..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startAllShareLauncher exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return v1

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startAllShareLauncher error...SecurityException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return v1
.end method

.method private blacklist unregisterSvcCastReceiver()V
    .locals 4

    const-string v0, "AllShareConnector"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unregisterSvcCastReceiver error - context is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "unregisterSvcCastReceiver Exception "

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist connect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Already trying to connecting...wait.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AllShareConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Already connected to AllShare service framework"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->startAllShareLauncher()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->bindAllShareService()Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->registerSvcCastReceiver()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist destroyInstance()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->disconnect()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before destroyInstance, mConnecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after destroyInstance, mConnecting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnecting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist disconnect()V
    .locals 4

    const-string v0, "AllShareConnector"

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->unregisterSvcCastReceiver()V

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disconnect error - context is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->isAllShareServiceConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mAllShareConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "disconnect Exception"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "AllShareConnector"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    invoke-interface {v2, p1}, Lcom/sec/android/allshare/iface/ISubscriber;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "getCaptionFilePathFromURI Exception"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, ""

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "getCaptionFilePathFromURI RemoteException"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, ""

    :cond_0
    :goto_0
    nop

    :goto_1
    return-object v1
.end method

.method public blacklist getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceVersion()Ljava/lang/String;
    .locals 4

    const-string v0, "AllShareConnector"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    invoke-interface {v2}, Lcom/sec/android/allshare/iface/ISubscriber;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_0

    const-string v0, "1.0.0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "getServiceVersion Exception"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, ""

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "getServiceVersion RemoteException"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, ""

    :cond_0
    :goto_0
    nop

    :goto_1
    return-object v1
.end method

.method public blacklist isAllShareServiceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J
    .locals 8

    const-string v0, "AllShareConnector"

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgID(J)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgType(I)V

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v1, v6, p1}, Lcom/sec/android/allshare/iface/ISubscriber;->requestCVAsync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " requestCVMAsync fail...Maybe Invalid Action Request"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :cond_2
    nop

    return-wide v4

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestCVMAsync error...Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-wide v2

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestCVMAsync error...RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-wide v2

    :cond_3
    :goto_0
    return-wide v2
.end method

.method public blacklist requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;
    .locals 5

    const-string v0, "AllShareConnector"

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setMsgType(I)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/sec/android/allshare/iface/ISubscriber;->requestCVSync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestCVMSync error...Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    move-object v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mSubscriberTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestCVMSync error...RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    nop

    :goto_1
    return-object v1

    :cond_2
    :goto_2
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    return-object v0
.end method

.method public blacklist setCallback(Landroid/os/Handler$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConnectionCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method public blacklist setProfileConstData(Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mConstData:Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    :cond_0
    return-void
.end method

.method public blacklist subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z
    .locals 6

    const-string v0, "AllShareConnector"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p2, v2

    :cond_1
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->addHandlerToHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v5, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/sec/android/allshare/iface/ISubscriber;->subscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "subscribeAllShareEvent RuntimeException"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v4

    const-string/jumbo v5, "subscribeAllShareEvent RemoteException"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :goto_1
    return v1
.end method

.method public blacklist unsubscribeAllEvents()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    iget-object v4, v3, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iget-object v6, v3, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mEventHandlerSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
    .locals 5

    const-string v0, "AllShareConnector"

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p2, v1

    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setMessenger(Landroid/os/Messenger;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->removeHandlerFromHashSet(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mISubscriber:Lcom/sec/android/allshare/iface/ISubscriber;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->mID:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/sec/android/allshare/iface/ISubscriber;->unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "unsubscribeAllShareEvent RuntimeException"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v4, "unsubscribeAllShareEvent RemoteException"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    nop

    :goto_1
    return-void
.end method
