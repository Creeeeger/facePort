.class public final Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getPlayingAppPackage()Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/PackageExt;

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v5}, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->getPackageNameForUid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;->PLAYBACK_BLOCKED_PACKAGE:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v5

    invoke-static {v5, v4}, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->getPackageNameForUid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->BLUETOOTH_MEDIA_SESSION_PACKAGE:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v3

    invoke-static {v3, v4}, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->getPackageNameForUid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v4, "dolbygametest"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_0

    :goto_2
    sget v3, Lkotlin/Result;->$r8$clinit:I

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_3
    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    const-string v0, "SoundCraft.AudioPlaybackManager"

    if-eqz v1, :cond_4

    sget-object v3, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/PackageExt;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v1

    const-string/jumbo v4, "uid="

    invoke-static {v1, v4, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->getPackageNameForUid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "packageName="

    invoke-static {v1, p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    move-object v2, p0

    goto :goto_4

    :cond_4
    const-string p0, "package name is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v2
.end method
