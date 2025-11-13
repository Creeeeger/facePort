.class final Landroid/service/translation/OnTranslationResultCallbackWrapper;
.super Ljava/lang/Object;
.source "OnTranslationResultCallbackWrapper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/translation/TranslationResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OnTranslationResultCallback"


# instance fields
.field private final blacklist mCallback:Landroid/service/translation/ITranslationCallback;

.field private final blacklist mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor blacklist <init>(Landroid/service/translation/ITranslationCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/translation/ITranslationCallback;

    iput-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCallback:Landroid/service/translation/ITranslationCallback;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private blacklist assertNotCalled()V
    .locals 2

    iget-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist accept(Landroid/view/translation/TranslationResponse;)V
    .locals 3

    invoke-direct {p0}, Landroid/service/translation/OnTranslationResultCallbackWrapper;->assertNotCalled()V

    iget-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->isFinalResponse()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/service/translation/OnTranslationResultCallbackWrapper;->mCallback:Landroid/service/translation/ITranslationCallback;

    invoke-interface {v0, p1}, Landroid/service/translation/ITranslationCallback;->onTranslationResponse(Landroid/view/translation/TranslationResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    const-string v1, "OnTranslationResultCallback"

    const-string v2, "Process is dead, ignore."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called with complete response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/view/translation/TranslationResponse;

    invoke-virtual {p0, p1}, Landroid/service/translation/OnTranslationResultCallbackWrapper;->accept(Landroid/view/translation/TranslationResponse;)V

    return-void
.end method
