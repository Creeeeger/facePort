.class public final Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final audioFocusRequest:Landroid/media/AudioFocusRequest;

.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public isPrepared:Z

.field public mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->isPrepared:Z

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->audioManager:Landroid/media/AudioManager;

    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;)V

    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->isPrepared:Z

    return-void
.end method

.method public final pauseMediaPlayer()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pauseMediaPlayer() mMediaPlayer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundBalancePreviewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method
