.class public final Lcom/samsung/android/nexus/video/VideoLayer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoLayer$Companion;

.field private static final RESET_MAX_CNT:I = 0x2710

.field private static final RESET_REASON_CORE:I = 0x0

.field private static final RESET_REASON_GL_ERROR:I = 0x2

.field private static final RESET_REASON_MEDIA_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private isAutoPlayNextMediaSource:Z

.field private isLoopingMediaSources:Z

.field private mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

.field private mFd:Ljava/io/FileDescriptor;

.field private mIsCreated:Z

.field private mNeedToRecreate:Z

.field private final mObjectRect:Landroid/graphics/Rect;

.field private mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

.field private mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

.field private final mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

.field private final mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

.field private mUri:Landroid/net/Uri;

.field private mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

.field private preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->Companion:Lcom/samsung/android/nexus/video/VideoLayer$Companion;

    const-string v0, "VideoLayer"

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 27

    move-object/from16 v15, p0

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mObjectRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;-><init>()V

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    invoke-direct {v0, v15}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    new-instance v14, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    move-object v0, v14

    const v24, 0x3fffff

    const/16 v25, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v26, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Landroid/graphics/RectF;Landroid/graphics/RectF;[F[FLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    return-void
.end method

.method public static final synthetic access$getMReservedActions$p(Lcom/samsung/android/nexus/video/VideoLayer;)Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$reset(Lcom/samsung/android/nexus/video/VideoLayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->reset(I)V

    return-void
.end method

.method public static final synthetic access$setDataSource(Lcom/samsung/android/nexus/video/VideoLayer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    move-result p0

    return p0
.end method

.method private final clearAsync()V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Clear async"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoGL;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    return-void
.end method

.method private final clearLocked(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Clear locked"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/nexus/video/VideoGL;->clear()V

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    return-void
.end method

.method public static synthetic clearLocked$default(Lcom/samsung/android/nexus/video/VideoLayer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked(Z)V

    return-void
.end method

.method private final create()V
    .locals 2

    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-direct {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;-><init>()V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->onCreate(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->prepareVideoGl()Lcom/samsung/android/nexus/video/VideoGL;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    :cond_1
    return-void
.end method

.method private final prepareVideoGl()Lcom/samsung/android/nexus/video/VideoGL;
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Prepare GL"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/nexus/video/VideoGL;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/nexus/video/VideoGL;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private final reset(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;->addCount(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    return-void
.end method

.method private final resetAsync()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->clearAsync()V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->create()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->restore()V

    return-void
.end method

.method private final setDataSource()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaUri(Landroid/net/Uri;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaAssetFd(Landroid/content/res/AssetFileDescriptor;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaFd(Ljava/io/FileDescriptor;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getVideoOrientation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoGL;->setVideoOrientation(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v4, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getVideoOrientation()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "setVideoOrientation"

    invoke-direct {v4, v6, v5, v1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const-string/jumbo v2, "setDataSource"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Clear"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked$default(Lcom/samsung/android/nexus/video/VideoLayer;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getCompletionListener()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-object p0
.end method

.method public final getContrast()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getContrast()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    return p0
.end method

.method public final getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getCurrentPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method public final getGlobalAlpha()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getGlobalAlpha()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public final getHdrModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHdrModeEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHdrSaturation()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHdrSaturation()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    return p0
.end method

.method public final getHsvHue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvHue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHsvSaturation()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvSaturation()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method public final getHsvValue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method public final getOffsetX()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getOffsetX()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getOffsetY()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getOffsetY()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-object p0
.end method

.method public final getSeekCompleteListener()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method public final getTransparencyEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getTransparencyEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getVideoStateChangedListener()Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    return-object p0
.end method

.method public final getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final isAutoPlayNextMediaSource()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isAutoPlayNextMediaSource:Z

    return p0
.end method

.method public final isLoopingMediaSources()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isLoopingMediaSources:Z

    return p0
.end method

.method public final isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->isPlaying()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAmbientModeChanged()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->create()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Destroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->clear()V

    return-void
.end method

.method public onDraw()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->resetAsync()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->onDrawFrame()V

    :cond_1
    return-void
.end method

.method public onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setWorldWidth(I)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setWorldHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setWorldSize(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "onSizeChanged"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public onTapEvent(IIJ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public final pausePlayer()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Pause player."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const-string v1, "pausePlayer"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->pause()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->reset(I)V

    return-void
.end method

.method public final seekToPlayer(I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Seek to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const/4 v1, 0x0

    const-string/jumbo v2, "seekToPlayer"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_1

    const/4 v1, 0x2

    if-eq v4, v1, :cond_0

    const/4 v1, 0x3

    if-eq v4, v1, :cond_0

    const/4 v1, 0x4

    if-eq v4, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->seekTo(I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setAutoPlayNextMediaSource(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isAutoPlayNextMediaSource:Z

    return-void
.end method

.method public final setBoundRect(Landroid/graphics/Rect;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setBoundRect(Landroid/graphics/RectF;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setBoundRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setBoundRect(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Landroid/graphics/RectF;

    aput-object p1, v1, v4

    const-string/jumbo p1, "setBoundRect"

    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-void
.end method

.method public final setContrast(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setContrast(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setContrast(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v2, "setContrast"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setCropRect(Landroid/graphics/RectF;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setCropRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setCropRect(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Landroid/graphics/RectF;

    aput-object p1, v1, v4

    const-string/jumbo p1, "setCropRect"

    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-void
.end method

.method public final setGlobalAlpha(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setGlobalAlpha(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setGlobalAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v2, "setGlobalAlpha"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHdrModeEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrModeEnabled(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrModeEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v2, "setHdrModeEnabled"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHdrModeEnabled(ZFF)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrModeEnabled(Ljava/lang/Boolean;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrSaturation(Ljava/lang/Float;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setContrast(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrModeEnabled(ZFF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "setHdrModeEnabled"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHdrSaturation(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrSaturation(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrSaturation(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v2, "setHdrSaturation"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHsvFilterColor([F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHsvFilterColor([F)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvFilterColor([F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, [F

    aput-object v3, v1, v2

    filled-new-array {p1}, [[F

    move-result-object p1

    const-string/jumbo v2, "setHsvFilterColor"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHsvHue(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvHue(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v1, "setHsvHue"

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHsvSaturation(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    move-result-object v0

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvSaturation(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v2, "setHsvSaturation"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHsvValue(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    move-result-object v0

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvValue(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v2, "setHsvValue"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setLooping(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setLooping(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const/4 v1, 0x0

    const-string/jumbo v2, "setLooping"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setLooping(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setLoopingMediaSources(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isLoopingMediaSources:Z

    return-void
.end method

.method public final setMediaSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setMediaSource(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mUri:Landroid/net/Uri;

    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setMediaSource(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setOffset(FFF)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetX(Ljava/lang/Float;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetY(Ljava/lang/Float;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetZ(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setOffset(FFF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo p2, "setOffset"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setOffsetXY(FF)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetX(Ljava/lang/Float;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetY(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setOffsetXY(FF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo p2, "setOffsetXY"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-void
.end method

.method public final setRgbFilterColor([F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRgbFilterColor([F)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setRgbFilterColor([F)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, [F

    aput-object v3, v1, v2

    filled-new-array {p1}, [[F

    move-result-object p1

    const-string/jumbo v2, "setRgbFilterColor"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-void
.end method

.method public final setRotation(FFFF)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationAngle(Ljava/lang/Float;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationX(Ljava/lang/Float;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationY(Ljava/lang/Float;)V

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationZ(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/video/VideoGL;->setRotation(FFFF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo p2, "setRotation"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setScale(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setScale(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setScale(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v2, "setScale"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public final setSize(FF)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setObjectWidth(Ljava/lang/Float;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setObjectHeight(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setSize(FF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo p2, "setSize"

    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setTransparencyEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setTransparencyEnabled(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setTransparencyEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v2, "setTransparencyEnabled"

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setVideoOrientation(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setVideoOrientation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setVideoStateChangedListener(Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    return-void
.end method

.method public final startPlayer()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Start player."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;->print()V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const-string/jumbo v1, "startPlayer"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    :goto_0
    return-void
.end method

.method public final stopPlayer()V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    const-string v1, "Stop player."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    const-string/jumbo v1, "stopPlayer"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    :goto_0
    return-void
.end method
