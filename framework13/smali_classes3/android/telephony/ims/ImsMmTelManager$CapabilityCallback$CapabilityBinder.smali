.class Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsMmTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilityBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .locals 0
    .param p1, "c"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 162
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    .line 163
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 164
    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 195
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 196
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCapabilitiesStatusChanged$0$android-telephony-ims-ImsMmTelManager$CapabilityCallback$CapabilityBinder(I)V
    .locals 2
    .param p1, "config"    # I

    .line 175
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method public blacklist onCapabilitiesStatusChanged(I)V
    .locals 4
    .param p1, "config"    # I

    .line 169
    const-string v0, "ImsMmTelManager"

    const-string/jumbo v1, "onCapabilitiesStatusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 175
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->restoreCallingIdentity(J)V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->restoreCallingIdentity(J)V

    .line 179
    throw v2
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 192
    return-void
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "isEnabled"    # Z

    .line 186
    return-void
.end method
