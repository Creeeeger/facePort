.class Lcom/samsung/android/ims/options/SemCapabilityManager$2;
.super Ljava/lang/Object;
.source "SemCapabilityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ims/options/SemCapabilityManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ims/options/SemCapabilityManager;

    .line 129
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected to SemCapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p2}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;->onConnected()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/options/SemCapabilityListener;

    .line 142
    .local v1, "listener":Lcom/samsung/android/ims/options/SemCapabilityListener;
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityListener;)V

    .line 143
    .end local v1    # "listener":Lcom/samsung/android/ims/options/SemCapabilityListener;
    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener failed. RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected to SemCapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;->onDisconnected()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)V

    .line 158
    return-void
.end method
