.class public Landroid/media/musicrecognition/MusicRecognitionManager;
.super Ljava/lang/Object;
.source "MusicRecognitionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;,
        Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;,
        Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionFailureCode;
    }
.end annotation


# static fields
.field public static final whitelist RECOGNITION_FAILED_AUDIO_UNAVAILABLE:I = 0x7

.field public static final whitelist RECOGNITION_FAILED_NOT_FOUND:I = 0x1

.field public static final whitelist RECOGNITION_FAILED_NO_CONNECTIVITY:I = 0x2

.field public static final whitelist RECOGNITION_FAILED_SERVICE_KILLED:I = 0x5

.field public static final whitelist RECOGNITION_FAILED_SERVICE_UNAVAILABLE:I = 0x3

.field public static final whitelist RECOGNITION_FAILED_TIMEOUT:I = 0x6

.field public static final whitelist RECOGNITION_FAILED_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mService:Landroid/media/musicrecognition/IMusicRecognitionManager;


# direct methods
.method public constructor blacklist <init>(Landroid/media/musicrecognition/IMusicRecognitionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionManager;->mService:Landroid/media/musicrecognition/IMusicRecognitionManager;

    return-void
.end method


# virtual methods
.method public whitelist beginStreamingSearch(Landroid/media/musicrecognition/RecognitionRequest;Ljava/util/concurrent/Executor;Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager;->mService:Landroid/media/musicrecognition/IMusicRecognitionManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/musicrecognition/RecognitionRequest;

    new-instance v2, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/musicrecognition/RecognitionRequest;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;-><init>(Landroid/media/musicrecognition/MusicRecognitionManager;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1, v2}, Landroid/media/musicrecognition/IMusicRecognitionManager;->beginRecognition(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
