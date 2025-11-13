.class Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;
.super Landroid/app/contextualsearch/IContextualSearchCallback$Stub;
.source "CallbackToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contextualsearch/CallbackToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/contextualsearch/ContextualSearchState;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$V3Z3yX6i-p3pR_-9k5yDTLa6rJI(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/app/contextualsearch/ContextualSearchState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->lambda$onResult$1(Landroid/app/contextualsearch/ContextualSearchState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZXye5YvhH2UVvGzeI79PufPV17I(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/os/ParcelableException;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->lambda$onError$3(Landroid/os/ParcelableException;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cXg9rTp7GG5Ql-o-nl8IRjF0ExI(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/app/contextualsearch/ContextualSearchState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->lambda$onResult$0(Landroid/app/contextualsearch/ContextualSearchState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wxSDcLsq7LLgC9a3Dzg8ypq5JjE(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/os/ParcelableException;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->lambda$onError$2(Landroid/os/ParcelableException;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/contextualsearch/ContextualSearchState;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/contextualsearch/IContextualSearchCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->mCallback:Landroid/os/OutcomeReceiver;

    iput-object p1, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onError$2(Landroid/os/ParcelableException;)V
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$3(Landroid/os/ParcelableException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/app/contextualsearch/CallbackToken;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/os/ParcelableException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResult$0(Landroid/app/contextualsearch/ContextualSearchState;)V
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResult$1(Landroid/app/contextualsearch/ContextualSearchState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/app/contextualsearch/CallbackToken;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResult state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/app/contextualsearch/ContextualSearchState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/os/ParcelableException;)V
    .locals 1

    new-instance v0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/os/ParcelableException;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onResult(Landroid/app/contextualsearch/ContextualSearchState;)V
    .locals 1

    new-instance v0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/app/contextualsearch/ContextualSearchState;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
