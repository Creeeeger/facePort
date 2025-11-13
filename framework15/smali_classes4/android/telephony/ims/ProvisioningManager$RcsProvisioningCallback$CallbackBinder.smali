.class Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$HvKcQY5BWG9DS9UyroNnEv_CZXE(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;[B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->lambda$onPreProvisioningReceived$4([B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Uq9IjM2GzmrmrT3XiJcg_1PJyPA(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->lambda$onConfigurationReset$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WjC_IaHZ8akHhcDuexrTglke6G4(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;[B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->lambda$onConfigurationChanged$0([B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZCa7wmcGr7cOKjFRd8NKvxFnIjM(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->lambda$onAutoConfigurationErrorReceived$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kaGM3QQsUri6aeMurYEncO3YKww(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->lambda$onRemoved$3()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onAutoConfigurationErrorReceived$1(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$0([B)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onConfigurationChanged([B)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationReset$2()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onConfigurationReset()V

    return-void
.end method

.method private synthetic blacklist lambda$onPreProvisioningReceived$4([B)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onPreProvisioningReceived([B)V

    return-void
.end method

.method private synthetic blacklist lambda$onRemoved$3()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onRemoved()V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public blacklist onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onConfigurationChanged([B)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onConfigurationReset()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onPreProvisioningReceived([B)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onRemoved()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
