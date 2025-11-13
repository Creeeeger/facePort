.class Lcom/samsung/android/media/SemMediaPlayer$2;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaPlayer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$2;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSubtitleData(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleData;)V
    .locals 11

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$2;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$2;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/media/SubtitleTrack;

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8, v5, v6}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    nop

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v9

    add-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
