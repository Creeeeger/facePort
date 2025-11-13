.class Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$CCX0Yl58aoAztyy1ktODMaLOxqo(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->lambda$onRcsFeatureProvisioningChanged$1(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EjNzBK1psbyG2RBD1uc_DEqZATk(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->lambda$onFeatureProvisioningChanged$0(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFeatureProvisioningChanged$0(IIZ)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->onFeatureProvisioningChanged(IIZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onRcsFeatureProvisioningChanged$1(IIZ)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->onRcsFeatureProvisioningChanged(IIZ)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final blacklist onFeatureProvisioningChanged(IIZ)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final blacklist onRcsFeatureProvisioningChanged(IIZ)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    throw v2
.end method
