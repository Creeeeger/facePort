.class public final Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final mediaSessionManager$delegate:Lkotlin/Lazy;

.field private playbackInfo:Landroid/media/session/MediaController$PlaybackInfo;

.field private remoteController:Landroid/media/session/MediaController;

.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController$mediaSessionManager$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController$mediaSessionManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->mediaSessionManager$delegate:Lkotlin/Lazy;

    const-string p1, "Media"

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->streamTypeToString:Ljava/lang/String;

    return-void
.end method

.method private final getActiveSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->mediaSessionManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method private final isRemotePlayerActive()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->getActiveSessions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/media/session/MediaController;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->remoteController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->playbackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getMaxVolume()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->isRemotePlayerActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->playbackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMinVolume()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->isRemotePlayerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getStreamType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->streamTypeToString:Ljava/lang/String;

    return-object p0
.end method

.method public getVolume()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->isRemotePlayerActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->playbackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    move-result p0

    :goto_0
    return p0
.end method

.method public setStreamVolume(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->isRemotePlayerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;->remoteController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setStreamVolume(II)V

    return-void
.end method
