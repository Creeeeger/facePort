.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field private static final CHINESE_APP_LIST:[Ljava/lang/String;

.field public static final Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;

.field private static final LIMIT_PREV_MOVE:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "MediaCommand.PreviousController"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController$Companion;

    const-string v8, "cn.kuwo.player"

    const-string v9, "cmccwm.mobilemusic"

    const-string v2, "com.kugou.android"

    const-string v3, "com.netease.cloudmusic"

    const-string v4, "com.ximalaya.ting.android"

    const-string v5, "fm.xiami.main"

    const-string v6, "com.tencent.qqmusic"

    const-string v7, "fm.qingting.qtradio"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->CHINESE_APP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;-><init>()V

    return-void
.end method

.method private final isChineseApp(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->CHINESE_APP_LIST:[Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isPositionWithIn5sec()Z
    .locals 4

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
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x1388

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "MediaCommand.PreviousController"

    const-string v0, "position has passed 5 seconds."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final shouldSendPreviousEventOnce()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->isChineseApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->isPositionWithIn5sec()Z

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


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isMusicAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PreviousController;->shouldSendPreviousEventOnce()Z

    move-result v0

    const/16 v1, 0x58

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->sendMediaKeyEvent(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->sendMediaKeyEvent(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->sendMediaKeyEvent(I)V

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
