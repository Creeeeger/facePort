.class abstract Landroid/speech/tts/PlaybackQueueItem;
.super Ljava/lang/Object;
.source "PlaybackQueueItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final greylist-max-o mCallerIdentity:Ljava/lang/Object;

.field private final greylist-max-o mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# direct methods
.method constructor greylist-max-o <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/PlaybackQueueItem;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iput-object p2, p0, Landroid/speech/tts/PlaybackQueueItem;->mCallerIdentity:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method greylist-max-o getCallerIdentity()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/PlaybackQueueItem;->mCallerIdentity:Ljava/lang/Object;

    return-object v0
.end method

.method protected greylist-max-o getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/PlaybackQueueItem;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    return-object v0
.end method

.method public abstract whitelist test-api run()V
.end method

.method abstract greylist-max-o stop(I)V
.end method
