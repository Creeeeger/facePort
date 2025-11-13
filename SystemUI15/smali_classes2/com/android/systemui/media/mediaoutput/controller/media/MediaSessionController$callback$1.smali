.class public final Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onAudioInfoChanged() - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onExtrasChanged() - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlaybackStateChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xe

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->update$default(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Lkotlin/Pair;Lkotlin/Pair;I)V

    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlaybackStateChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v7, 0xd

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->update$default(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Lkotlin/Pair;Lkotlin/Pair;I)V

    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onQueueChanged() - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onQueueTitleChanged() - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 2

    const-string v0, "MediaSessionController"

    const-string v1, "onSessionDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->close()V

    return-void
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "onSessionEvent() - "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
