.class Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;
.super Landroid/speech/IRecognitionSupportCallback$Stub;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalSupportCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/speech/RecognitionSupportCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$6iR4hX2gthm4fl-DUn59SXN5l-s(Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->lambda$onError$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$D0hfxOVCRlOisXi-vC0qx5UGeVk(Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;Landroid/speech/RecognitionSupport;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->lambda$onSupportResult$0(Landroid/speech/RecognitionSupport;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/IRecognitionSupportCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->mCallback:Landroid/speech/RecognitionSupportCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(I)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->mCallback:Landroid/speech/RecognitionSupportCallback;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionSupportCallback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSupportResult$0(Landroid/speech/RecognitionSupport;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->mCallback:Landroid/speech/RecognitionSupportCallback;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionSupportCallback;->onSupportResult(Landroid/speech/RecognitionSupport;)V

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

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda1;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSupportResult(Landroid/speech/RecognitionSupport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback$$ExternalSyntheticLambda0;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;Landroid/speech/RecognitionSupport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
