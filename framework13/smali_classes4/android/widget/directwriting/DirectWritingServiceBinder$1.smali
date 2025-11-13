.class Landroid/widget/directwriting/DirectWritingServiceBinder$1;
.super Ljava/lang/Object;
.source "DirectWritingServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/directwriting/DirectWritingServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;


# direct methods
.method constructor blacklist <init>(Landroid/widget/directwriting/DirectWritingServiceBinder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/directwriting/DirectWritingServiceBinder;

    .line 45
    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onServiceConnected$0$android-widget-directwriting-DirectWritingServiceBinder$1()V
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$fgetmTriggerCallback(Landroid/widget/directwriting/DirectWritingServiceBinder;)Landroid/widget/directwriting/DirectWritingTriggerCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingTriggerCallback;->updateTriggerEditText()V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-static {v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$fgetmPackageName(Landroid/widget/directwriting/DirectWritingServiceBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DWL]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-static {p2}, Landroid/widget/directwriting/IDirectWritingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/widget/directwriting/IDirectWritingService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$fputmRemoteService(Landroid/widget/directwriting/DirectWritingServiceBinder;Landroid/widget/directwriting/IDirectWritingService;)V

    .line 50
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$mregisterCallback(Landroid/widget/directwriting/DirectWritingServiceBinder;)Z

    .line 52
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$mupdateConfiguration(Landroid/widget/directwriting/DirectWritingServiceBinder;)V

    .line 53
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$fputmBounded(Landroid/widget/directwriting/DirectWritingServiceBinder;Z)V

    .line 55
    new-instance v0, Landroid/widget/directwriting/DirectWritingServiceBinder$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/directwriting/DirectWritingServiceBinder$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/directwriting/DirectWritingServiceBinder$1;)V

    .line 56
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    .local v1, "handler":Landroid/os/Handler;
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-static {v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$fgetmPackageName(Landroid/widget/directwriting/DirectWritingServiceBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DWL]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$munregisterCallback(Landroid/widget/directwriting/DirectWritingServiceBinder;)Z

    .line 64
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$fgetmContext(Landroid/widget/directwriting/DirectWritingServiceBinder;)Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/directwriting/DirectWritingServiceBinder;->unbindService(Landroid/content/Context;J)V

    .line 65
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$fputmRemoteService(Landroid/widget/directwriting/DirectWritingServiceBinder;Landroid/widget/directwriting/IDirectWritingService;)V

    .line 66
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingServiceBinder$1;->this$0:Landroid/widget/directwriting/DirectWritingServiceBinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->-$$Nest$fputmBounded(Landroid/widget/directwriting/DirectWritingServiceBinder;Z)V

    .line 67
    return-void
.end method
