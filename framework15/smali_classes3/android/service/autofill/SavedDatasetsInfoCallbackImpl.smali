.class final Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;
.super Ljava/lang/Object;
.source "SavedDatasetsInfoCallbackImpl.java"

# interfaces
.implements Landroid/service/autofill/SavedDatasetsInfoCallback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AutofillService"


# instance fields
.field private final blacklist mReceiver:Lcom/android/internal/os/IResultReceiver;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    iput-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    return-void
.end method

.method private blacklist send(ILandroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send onSavedPasswordCountRequest result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "error"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1, v0}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public whitelist onSuccess(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/autofill/SavedDatasetsInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/SavedDatasetsInfo;

    iget-object v5, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/service/autofill/SavedDatasetsInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/service/autofill/SavedDatasetsInfo;->getCount()I

    move-result v0

    :cond_1
    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    return-void
.end method
