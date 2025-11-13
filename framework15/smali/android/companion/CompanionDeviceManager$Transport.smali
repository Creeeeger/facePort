.class Landroid/companion/CompanionDeviceManager$Transport;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field private final blacklist mAssociationId:I

.field private blacklist mLocalIn:Ljava/io/InputStream;

.field private blacklist mLocalOut:Ljava/io/OutputStream;

.field private final blacklist mRemoteIn:Ljava/io/InputStream;

.field private final blacklist mRemoteOut:Ljava/io/OutputStream;

.field private volatile blacklist mStopped:Z

.field final synthetic blacklist this$0:Landroid/companion/CompanionDeviceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$Ik2Uk7LbsVCGgMshiZXnrjTwjhI(Landroid/companion/CompanionDeviceManager$Transport;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Transport;->lambda$start$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wIuKynGG0iWZp4O57nBuiu4AG6I(Landroid/companion/CompanionDeviceManager$Transport;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Transport;->lambda$start$1()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/companion/CompanionDeviceManager;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
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

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    iput-object p4, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    return-void
.end method

.method private blacklist copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$start$0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager$Transport;->copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    if-nez v1, :cond_0

    const-string v1, "CDM_CompanionDeviceManager"

    const-string v2, "Trouble during outgoing transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager$Transport;->stop()V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$start$1()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager$Transport;->copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    if-nez v1, :cond_0

    const-string v1, "CDM_CompanionDeviceManager"

    const-string v2, "Trouble during incoming transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager$Transport;->stop()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v3, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v3, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    :try_start_0
    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v3

    iget-object v4, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v4}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v5}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    iget v6, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    invoke-interface {v3, v4, v5, v6, v2}, Landroid/companion/ICompanionDeviceManager;->attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$Transport;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceManager$Transport;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to configure transport"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public blacklist stop()V
    .locals 5

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManager"

    if-nez v0, :cond_0

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v2}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget v4, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    invoke-interface {v0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager;->detachSystemDataTransport(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to detach transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method
