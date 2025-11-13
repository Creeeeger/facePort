.class final Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;
.super Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;
.source "RcsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/RcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RcsFeatureBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mReference:Landroid/telephony/ims/feature/RcsFeature;


# direct methods
.method public static synthetic blacklist $r8$lambda$-EqTmxsMsGjg7TBCnaa1bTYsD2E(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$addCapabilityCallback$1(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$0HWq31EAu0T19aM5DFjYEuFu7zg(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$changeCapabilitiesConfiguration$3(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BOtvV_YMlxhtdB-NudHnEcBjxiM(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$sendOptionsCapabilityRequest$8(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NT4e-ddkO5Xifg7rn30Bj-Fkh4o(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$setCapabilityExchangeEventListener$5(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VfebCK8oSoD2S5Dy-79dLrobj1M(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$removeCapabilityCallback$2(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$a-tXHEE-5O18PJL-7xvpSaJ8D-g(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$queryCapabilityConfiguration$4(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eXVDGfCcdstZ6j73v7hHogI1pXU(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$publishCapabilities$6(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gHeJBl0Tm_8C7V9KBuQx89kHmNA(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$queryCapabilityStatus$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rmvDkswTw71-uVWxMzzL3Vmu11Q(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$subscribeForCapabilities$7(Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    iput-object p2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsFeatureBinder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RcsFeatureBinder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RcsFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private synthetic blacklist lambda$addCapabilityCallback$1(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$changeCapabilitiesConfiguration$3(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature;->requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$9(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$10(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$publishCapabilities$6(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->-$$Nest$mgetCapabilityExchangeImplBaseInternal(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;->publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$queryCapabilityConfiguration$4(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$queryCapabilityStatus$0()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->mCapabilities:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$removeCapabilityCallback$2(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendOptionsCapabilityRequest$8(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->-$$Nest$mgetCapabilityExchangeImplBaseInternal(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$setCapabilityExchangeEventListener$5(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->-$$Nest$msetCapabilityExchangeEventListener(Landroid/telephony/ims/feature/RcsFeature;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$subscribeForCapabilities$7(Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->-$$Nest$mgetCapabilityExchangeImplBaseInternal(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;->subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "addCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "changeCapabilitiesConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getFeatureState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/feature/RcsFeature;)V

    const-string v0, "getFeatureState"

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;

    invoke-direct {v0, p2}, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;-><init>(Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    const-string/jumbo v2, "publishCapabilities"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "queryCapabilityConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist queryCapabilityStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)V

    const-string/jumbo v1, "queryCapabilityStatus"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "removeCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;

    invoke-direct {v0, p3}, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;-><init>(Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V

    const-string/jumbo v2, "sendOptionsCapabilityRequest"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

    invoke-direct {v0, p1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;-><init>(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    const-string/jumbo v2, "setCapabilityExchangeEventListener"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist subscribeForCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;

    invoke-direct {v0, p2}, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;-><init>(Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    const-string/jumbo v2, "subscribeForCapabilities"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
