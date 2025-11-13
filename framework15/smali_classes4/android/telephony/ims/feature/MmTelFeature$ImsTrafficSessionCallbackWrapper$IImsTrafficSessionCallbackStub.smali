.class Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;
.super Landroid/telephony/ims/aidl/IImsTrafficSessionCallback$Stub;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IImsTrafficSessionCallbackStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mImsTrafficSessionCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/feature/ImsTrafficSessionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$R1uozPNtxtnRHYly9mCtnuzJos8(Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->lambda$onReady$1(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$enY290okwvAbNiG-0jraGxtUTnw(Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->lambda$onError$3(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsTrafficSessionCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->mImsTrafficSessionCallbackWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/ims/feature/ImsTrafficSessionCallback;->onError(Landroid/telephony/ims/feature/ConnectionFailureInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$3(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReady$0(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .locals 0

    invoke-interface {p0}, Landroid/telephony/ims/feature/ImsTrafficSessionCallback;->onReady()V

    return-void
.end method

.method private synthetic blacklist lambda$onReady$1(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->mImsTrafficSessionCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onReady()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->mImsTrafficSessionCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method blacklist update(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
