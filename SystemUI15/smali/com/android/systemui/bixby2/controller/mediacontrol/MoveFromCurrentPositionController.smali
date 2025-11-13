.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field public static final Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;

.field private static final INVALID_POSITION:J = -0x1L

.field public static final NETFLIX_CUSTOM_ACTION:Ljava/lang/String; = "customActionSeek"

.field private static final NETFLIX_PACKAGE_NAME:Ljava/lang/String; = "com.netflix.mediaclient"

.field public static final OFFSET:Ljava/lang/String; = "offset"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;-><init>()V

    return-void
.end method

.method private final getPosition()J
    .locals 2

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private final isNetflixController()Z
    .locals 1

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.netflix.mediaclient"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final sendCustomAction()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->time:J

    long-to-int v1, v1

    const-string v2, "offset"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    const-string v1, "customActionSeek"

    invoke-virtual {v0, v1, p0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x1

    const-string/jumbo v1, "success"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isPlayingOrFocused()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;->isNetflixController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;->sendCustomAction()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->time:J

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->seekTo(J)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "NoSupportFeature"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "MediaNotPlaying"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method
