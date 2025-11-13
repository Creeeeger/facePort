.class Landroid/hardware/location/ContextHubManager$3;
.super Landroid/hardware/location/IContextHubCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/location/ContextHubManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$k1S7gI93e2g9hLw2puX54Fm7etI(Landroid/hardware/location/ContextHubManager$3;IILandroid/hardware/location/ContextHubMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$3;->lambda$onMessageReceipt$0(IILandroid/hardware/location/ContextHubMessage;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/location/ContextHubManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$3;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceipt$0(IILandroid/hardware/location/ContextHubMessage;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->-$$Nest$minvokeOnMessageReceiptCallback(Landroid/hardware/location/ContextHubManager;IILandroid/hardware/location/ContextHubMessage;)V

    return-void
.end method


# virtual methods
.method public blacklist onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->this$0:Landroid/hardware/location/ContextHubManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->-$$Nest$fgetmCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->-$$Nest$fgetmCallbackHandler(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/location/ContextHubManager$3;IILandroid/hardware/location/ContextHubMessage;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->-$$Nest$fgetmLocalCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v1}, Landroid/hardware/location/ContextHubManager;->-$$Nest$fgetmLocalCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$ICallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
