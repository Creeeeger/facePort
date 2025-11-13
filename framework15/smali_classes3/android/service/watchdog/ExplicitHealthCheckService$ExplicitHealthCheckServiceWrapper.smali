.class Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;
.super Landroid/service/watchdog/IExplicitHealthCheckService$Stub;
.source "ExplicitHealthCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/watchdog/ExplicitHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExplicitHealthCheckServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/watchdog/ExplicitHealthCheckService;


# direct methods
.method public static synthetic blacklist $r8$lambda$BZYPgTlSmd4SrBx534fWBQQ5vtA(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$getSupportedPackages$3(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_OTuZVPjSVa5XTIHPo8EH0TiEas(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$cancel$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fjLS3d_TjVLL-2b9QhE50Cqce48(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$request$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gXlYW_AzybbYvnyIng4oEQSnatg(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$getRequestedPackages$4(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iXuMWjNTtxHFvL2g619i02QNUvY(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->lambda$setCallback$0(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-direct {p0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V

    return-void
.end method

.method private synthetic blacklist lambda$cancel$2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onCancelHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$getRequestedPackages$4(Landroid/os/RemoteCallback;)V
    .locals 4

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetRequestedPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "Requested  package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.requested_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$getSupportedPackages$3(Landroid/os/RemoteCallback;)V
    .locals 4

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetSupportedPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "Supported package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.supported_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$request$1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onRequestHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setCallback$0(Landroid/os/RemoteCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fputmCallback(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/os/RemoteCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist cancel(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist getRequestedPackages(Landroid/os/RemoteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist getSupportedPackages(Landroid/os/RemoteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist request(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist setCallback(Landroid/os/RemoteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
