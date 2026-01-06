.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;
.super Ljava/lang/Object;
.source "DLCBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "DLC Sender"

    const-string v1, "DLC Client ServiceConnected"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {p2}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$002(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$200(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$300(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$300(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;->onResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DLC Sender"

    const-string v1, "Client ServiceDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$002(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->access$402(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Z)Z

    return-void
.end method
