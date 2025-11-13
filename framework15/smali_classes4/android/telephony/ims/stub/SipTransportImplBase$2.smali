.class Landroid/telephony/ims/stub/SipTransportImplBase$2;
.super Landroid/telephony/ims/aidl/ISipTransport$Stub;
.source "SipTransportImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/SipTransportImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/SipTransportImplBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$fINeIqIuD3Ztdj2K3VHkab-j3mg(Landroid/telephony/ims/stub/SipTransportImplBase$2;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/SipTransportImplBase$2;->lambda$createSipDelegate$0(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$koFmp8pQ0lysaRp5iurmIClQVcs(Landroid/telephony/ims/stub/SipTransportImplBase$2;Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase$2;->lambda$destroySipDelegate$1(Landroid/telephony/ims/aidl/ISipDelegate;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipTransport$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$createSipDelegate$0(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/SipTransportImplBase;->-$$Nest$mcreateSipDelegateInternal(Landroid/telephony/ims/stub/SipTransportImplBase;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$destroySipDelegate$1(Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase;->-$$Nest$mdestroySipDelegateInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/telephony/ims/aidl/ISipDelegate;I)V

    return-void
.end method


# virtual methods
.method public blacklist createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-static {v2}, Landroid/telephony/ims/stub/SipTransportImplBase;->-$$Nest$fgetmBinderExecutor(Landroid/telephony/ims/stub/SipTransportImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v9, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase$2;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
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

.method public blacklist destroySipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-static {v2}, Landroid/telephony/ims/stub/SipTransportImplBase;->-$$Nest$fgetmBinderExecutor(Landroid/telephony/ims/stub/SipTransportImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase$2;Landroid/telephony/ims/aidl/ISipDelegate;I)V

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
