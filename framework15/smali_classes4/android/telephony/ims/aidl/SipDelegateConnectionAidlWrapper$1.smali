.class Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;
.super Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;
.source "SipDelegateConnectionAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$8wxUhuh7qmqq8zz6xP3aZOLpP1w(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onCreated$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AVW0He8mJ5RY31S6EPlviBCAXtQ(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onFeatureTagStatusChanged$1(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P-GvZBw4Z60DndJGvwAsoJRJD14(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onDestroyed$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_bwBIOG0FX4b3ZXM5IsGUAd7ch0(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onImsConfigurationChanged$2(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dVj7sxSs_u20MqZ5xrs41AAGuds(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onConfigurationChanged$3(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$3(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCreated$0()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onCreated(Landroid/telephony/ims/SipDelegateConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDestroyed$4(I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onDestroyed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onFeatureTagStatusChanged$1(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/Set;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImsConfigurationChanged$2(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    return-void
.end method


# virtual methods
.method public blacklist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateConfiguration;)V

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

.method public blacklist onCreated(Landroid/telephony/ims/aidl/ISipDelegate;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$massociateSipDelegate(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;Landroid/telephony/ims/aidl/ISipDelegate;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;)V

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

.method public blacklist onDestroyed(I)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$minvalidateSipDelegateBinder(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;I)V

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

.method public blacklist onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V

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

.method public blacklist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateImsConfiguration;)V

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
