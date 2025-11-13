.class public final Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SOUND_FILES:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForcedSoundIds:[I

.field public final mForcedSoundPool:Landroid/media/SoundPool;

.field public final mSoundIds:[I

.field public final mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/system/media/audio/ui/Shutter.ogg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->createSoundPool(Z)Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->createSoundPool(Z)Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundIds:[I

    move v1, p1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundIds:[I

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aput v4, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static createSoundPool(Z)Landroid/media/SoundPool;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createSoundPool : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Screenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    :goto_0
    const-string p0, "CAMERA"

    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    const-string/jumbo p0, "stv_shutter"

    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized play(Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundIds:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    aget v5, v5, v3

    move v8, v5

    move-object v5, v4

    move v4, v8

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    move-object v5, v1

    :goto_0
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    aput v0, p1, v3

    goto :goto_3

    :cond_1
    aget-object p1, v0, v3

    invoke-virtual {v1, p1, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    aput p1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const-string v0, "g_volume_situation_key;type=3;device=0"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v3, p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :goto_2
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 p1, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v4

    move v2, v3

    move v4, p1

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method
