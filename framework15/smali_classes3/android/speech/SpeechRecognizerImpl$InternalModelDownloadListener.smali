.class Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;
.super Landroid/speech/IModelDownloadListener$Stub;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalModelDownloadListener"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mModelDownloadListener:Landroid/speech/ModelDownloadListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$00xONsy-hqT6TVQhcGjJpQxKikg(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->lambda$onProgress$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4VVjFlhV5qSwzrkQMr7B5cKxOEM(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->lambda$onError$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ifEPuCIbrI57aKY8B4mq9UmV6EU(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->lambda$onScheduled$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$l-7HE7ZhGPcHMlw5j5O9HwjqVis(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->lambda$onSuccess$1()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/IModelDownloadListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$3(I)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0, p1}, Landroid/speech/ModelDownloadListener;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onProgress$0(I)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0, p1}, Landroid/speech/ModelDownloadListener;->onProgress(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onScheduled$2()V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0}, Landroid/speech/ModelDownloadListener;->onScheduled()V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$1()V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    invoke-interface {v0}, Landroid/speech/ModelDownloadListener;->onSuccess()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda0;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda2;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onScheduled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda1;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSuccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener$$ExternalSyntheticLambda3;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
