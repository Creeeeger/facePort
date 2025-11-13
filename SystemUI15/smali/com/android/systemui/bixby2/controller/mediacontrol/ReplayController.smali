.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/ReplayController;
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
    .locals 3

    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->isMediaActive:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->isMediaControlActive(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isMusicAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x100

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isValidAction(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x58

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->sendMediaKeyEvent(I)V

    :goto_0
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x1

    const-string/jumbo v1, "success"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x2

    const-string v1, "NoMediaExists"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_1
    return-object p0
.end method
