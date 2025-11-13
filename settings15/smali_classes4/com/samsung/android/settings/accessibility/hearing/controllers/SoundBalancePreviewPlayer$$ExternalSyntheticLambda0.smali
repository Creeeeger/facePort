.class public final synthetic Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x3

    const-string v1, "SoundBalancePreviewPlayer"

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string p0, "Unknown audio focus change code,"

    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "AUDIOFOCUS_GAIN"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "AudioFocus state = "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_2
    :goto_0
    return-void
.end method
