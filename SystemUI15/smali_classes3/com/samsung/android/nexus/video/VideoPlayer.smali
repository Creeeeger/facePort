.class public final Lcom/samsung/android/nexus/video/VideoPlayer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

.field public static final MEDIA_ERROR_NOT_PREPARED:I = -0x26

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field private static final SEM_KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I = 0x88bc

.field private static final SEM_KEY_PARAMETER_SEAMLESS_LOOPING:I = 0x9089

.field private static final SEM_KEY_PARAMETER_VIDEO_TEAR_DOWN:I = 0x9088

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private isLooping:Z

.field private final mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field private mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

.field private mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

.field private mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private mediaFd:Ljava/io/FileDescriptor;

.field private mediaUri:Landroid/net/Uri;

.field private preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private videoOrientation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->Companion:Lcom/samsung/android/nexus/video/VideoPlayer$Companion;

    const-string v0, "VideoPlayer"

    sput-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer;-><init>()V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/nexus/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$3;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$4;-><init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final loggingError(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setDataSourceAssetFd()V
    .locals 7

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data asset source fd = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is looping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_7

    :goto_2
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data source fd failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    const-string v0, "Set data source error. context is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v0, "Set data source error. Media asset fd is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void
.end method

.method private final setDataSourceFd()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data source fd = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is looping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_4

    :goto_2
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data source fd failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    const-string v0, "Set data source error. context is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "Set data source error. Media fd is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void
.end method

.method private final setDataSourceUri()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data source uri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is looping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/samsung/android/nexus/base/context/NexusContext;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_6

    :goto_2
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data source fd failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    const-string v0, "Set data source error. context is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "Set data source error. Media uri is null."

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->loggingError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCompletionListener()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-object p0
.end method

.method public final getCurrentPosition()I
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result p0

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get current position : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method public final getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    return-object p0
.end method

.method public final getMediaAssetFd()Landroid/content/res/AssetFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    return-object p0
.end method

.method public final getMediaFd()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public final getMediaUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-object p0
.end method

.method public final getSeekCompleteListener()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method public final getVideoOrientation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->videoOrientation:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoSize()Landroid/graphics/Point;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    move-result-object p0

    const/4 v0, 0x1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getVideoWidth()I

    move-result v1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getVideoHeight()I

    move-result p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final isLooping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    return p0
.end method

.method public final isPlaying()Z
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set looping to the media player : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreate(Lcom/samsung/android/nexus/base/context/NexusContext;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mNexusContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    return-void
.end method

.method public final pause()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pause : state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->pause()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->PAUSED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot pause media player : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final play()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start play state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", player looping state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->isLooping()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->start()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot start media player : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Release"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->release()V

    return-void
.end method

.method public final seekTo(I)V
    .locals 4

    const-string v0, "Cannot seek to in media player : "

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v2, "Seek to position : "

    const-string v3, " , state = "

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public final setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-void
.end method

.method public final setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setLooping(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set looping : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->isLooping:Z

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get playing state of media player : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setMPlayerState(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    return-void
.end method

.method public final setMediaAssetFd(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceAssetFd()V

    return-void
.end method

.method public final setMediaFd(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceFd()V

    return-void
.end method

.method public final setMediaUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mediaUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setDataSourceUri()V

    return-void
.end method

.method public final setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-void
.end method

.method public final setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set surface : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set surface to media player : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set volume : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public final stop()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop : state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->reset()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoPlayer;->mPlayerState:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot stop media player : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method
