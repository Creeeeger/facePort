.class Landroid/service/resumeonreboot/ResumeOnRebootService$1;
.super Landroid/service/resumeonreboot/IResumeOnRebootService$Stub;
.source "ResumeOnRebootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/resumeonreboot/ResumeOnRebootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/resumeonreboot/ResumeOnRebootService;


# direct methods
.method public static synthetic blacklist $r8$lambda$7xA6c3fmSGqf__5dXM89QlFI_aA(Landroid/service/resumeonreboot/ResumeOnRebootService$1;[BJLandroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->lambda$wrapSecret$0([BJLandroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xqLOsDAMg_NIUx04zO20sh74MlQ(Landroid/service/resumeonreboot/ResumeOnRebootService$1;[BLandroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->lambda$unwrap$1([BLandroid/os/RemoteCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/resumeonreboot/ResumeOnRebootService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->this$0:Landroid/service/resumeonreboot/ResumeOnRebootService;

    invoke-direct {p0}, Landroid/service/resumeonreboot/IResumeOnRebootService$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$unwrap$1([BLandroid/os/RemoteCallback;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->this$0:Landroid/service/resumeonreboot/ResumeOnRebootService;

    invoke-virtual {v0, p1}, Landroid/service/resumeonreboot/ResumeOnRebootService;->onUnwrap([B)[B

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "unrwapped_blob_key"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "exception_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p2, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$wrapSecret$0([BJLandroid/os/RemoteCallback;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->this$0:Landroid/service/resumeonreboot/ResumeOnRebootService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/service/resumeonreboot/ResumeOnRebootService;->onWrap([BJ)[B

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "wrapped_blob_key"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "exception_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist unwrap([BLandroid/os/RemoteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->this$0:Landroid/service/resumeonreboot/ResumeOnRebootService;

    invoke-static {v0}, Landroid/service/resumeonreboot/ResumeOnRebootService;->-$$Nest$fgetmHandler(Landroid/service/resumeonreboot/ResumeOnRebootService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda0;-><init>(Landroid/service/resumeonreboot/ResumeOnRebootService$1;[BLandroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist wrapSecret([BJLandroid/os/RemoteCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->this$0:Landroid/service/resumeonreboot/ResumeOnRebootService;

    invoke-static {v0}, Landroid/service/resumeonreboot/ResumeOnRebootService;->-$$Nest$fgetmHandler(Landroid/service/resumeonreboot/ResumeOnRebootService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;-><init>(Landroid/service/resumeonreboot/ResumeOnRebootService$1;[BJLandroid/os/RemoteCallback;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
