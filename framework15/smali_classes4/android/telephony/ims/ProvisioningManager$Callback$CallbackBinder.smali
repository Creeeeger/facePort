.class Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;


# direct methods
.method public static synthetic blacklist $r8$lambda$Uqj45kRinWCd8VcShz4FVjh9G-M(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->lambda$onStringConfigChanged$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Vh-mxz2fHpOAh_Vyzgu6aTH6s60(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->lambda$onIntConfigChanged$0(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$Callback;Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onIntConfigChanged$0(II)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->onProvisioningIntChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onStringConfigChanged$1(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->onProvisioningStringChanged(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final blacklist onIntConfigChanged(II)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final blacklist onStringConfigChanged(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    throw v2
.end method
