.class Landroid/service/smartspace/SmartspaceService$1;
.super Landroid/service/smartspace/ISmartspaceService$Stub;
.source "SmartspaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/SmartspaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/smartspace/SmartspaceService;


# direct methods
.method public static synthetic blacklist $r8$lambda$L6lsvi4rwPHbSAoB5XXcZ9urOGE(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoCreateSmartspaceSession(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NJ3IgkAOxkZC_JEnBs7ZefJs7y4(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoDestroy(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RgJ-zYu2HmofpMiNI8SukSn_5rA(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoUnregisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_zo_QNGXZsvbxT35YWBt_JpXeFs(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoRegisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v9Xsx_pnXvYX7w7Vx0Iy9A_NPEM(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoRequestPredictionUpdate(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/smartspace/SmartspaceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-direct {p0}, Landroid/service/smartspace/ISmartspaceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 3

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 3

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 3

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 3

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
