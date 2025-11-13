.class Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;
.super Lcom/android/internal/telephony/IImsStateCallback$Stub;
.source "ImsStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IImsStateCallbackStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/ImsStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$gZcUzSo65jORl76544EFHfzWxks(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->lambda$onAvailable$1(Landroid/telephony/ims/ImsStateCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xIOg2gzoj0TB9CpiTwvxaANNGZQ(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->lambda$onUnavailable$3(Landroid/telephony/ims/ImsStateCallback;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/ImsStateCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/IImsStateCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic blacklist lambda$onAvailable$0(Landroid/telephony/ims/ImsStateCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsStateCallback;->onAvailable()V

    return-void
.end method

.method private synthetic blacklist lambda$onAvailable$1(Landroid/telephony/ims/ImsStateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onUnavailable$2(Landroid/telephony/ims/ImsStateCallback;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsStateCallback;->onUnavailable(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnavailable$3(Landroid/telephony/ims/ImsStateCallback;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsStateCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist onAvailable()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onUnavailable(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
