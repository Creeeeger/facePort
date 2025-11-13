.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/SeekToController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;-><init>()V

    return-void
.end method


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isPlayingOrFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->time:J

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->seekTo(J)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x2

    const-string v1, "MediaNotPlaying"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method
