.class public final Landroid/service/autofill/SaveCallback;
.super Ljava/lang/Object;
.source "SaveCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SaveCallback"


# instance fields
.field private final greylist-max-o mCallback:Landroid/service/autofill/ISaveCallback;

.field private greylist-max-o mCalled:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/service/autofill/ISaveCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    return-void
.end method

.method private greylist-max-o assertNotCalled()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o onSuccessInternal(Landroid/content/IntentSender;)V
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onSuccess(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist onFailure(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailure(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist onSuccess()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/autofill/SaveCallback;->onSuccessInternal(Landroid/content/IntentSender;)V

    return-void
.end method

.method public whitelist onSuccess(Landroid/content/IntentSender;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-direct {p0, v0}, Landroid/service/autofill/SaveCallback;->onSuccessInternal(Landroid/content/IntentSender;)V

    return-void
.end method
