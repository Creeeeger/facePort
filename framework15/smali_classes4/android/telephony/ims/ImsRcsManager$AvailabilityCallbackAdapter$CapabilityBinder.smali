.class Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilityBinder"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$zGZsJpd61UCSQBSn8YfndPCy_C8(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->lambda$onCapabilitiesStatusChanged$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    return-void
.end method

.method private synthetic blacklist lambda$onCapabilitiesStatusChanged$0(I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;->onAvailabilityChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesStatusChanged(I)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .locals 0

    return-void
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .locals 0

    return-void
.end method
