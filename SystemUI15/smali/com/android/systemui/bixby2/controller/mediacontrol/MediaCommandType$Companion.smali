.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;ILcom/android/systemui/bixby2/util/MediaModeInfoBixby;Lcom/android/systemui/bixby2/util/AudioManagerWrapper;Landroid/media/session/MediaSessionManager;)Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->setMediaInfo(Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;)V

    invoke-virtual {p0, p5}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->setMediaSessionManager(Landroid/media/session/MediaSessionManager;)V

    invoke-virtual {p4}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isInCall()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/InCallCaseController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/InCallCaseController;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getActiveSession()Landroid/media/session/MediaController;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;

    invoke-direct {p0, p2}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;-><init>(I)V

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->setMediaController(Landroid/media/session/MediaController;)V

    packed-switch p2, :pswitch_data_0

    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/InvalidActionController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/InvalidActionController;-><init>()V

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/SeekToController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/SeekToController;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MoveFromCurrentPositionController;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/RewindController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/RewindController;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/FastForwardController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/FastForwardController;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/SkipController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/SkipController;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/ReplayController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/ReplayController;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayController;-><init>()V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getActiveSession()Landroid/media/session/MediaController;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.audiomirroring"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaController;

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaController;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaInfo:Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isMediaControlActive(Z)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;->INSTANCE:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .locals 0

    sput-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaController:Landroid/media/session/MediaController;

    return-void
.end method

.method public final setMediaInfo(Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;)V
    .locals 0

    sput-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaInfo:Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    return-void
.end method

.method public final setMediaSessionManager(Landroid/media/session/MediaSessionManager;)V
    .locals 0

    sput-object p1, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-void
.end method
