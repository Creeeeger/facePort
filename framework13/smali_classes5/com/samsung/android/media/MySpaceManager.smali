.class public Lcom/samsung/android/media/MySpaceManager;
.super Ljava/lang/Object;
.source "MySpaceManager.java"


# static fields
.field public static final blacklist MYSPACE_EFFECT_MAX_TIMED_OUT:I = 0x5dc

.field public static final blacklist MYSPACE_EFFECT_TIMED_OUT:I = 0x3e8

.field public static final blacklist MYSPACE_MUSIC_FADEIN:I = 0x0

.field public static final blacklist MYSPACE_MUSIC_FADEOUT:I = 0x1

.field public static final blacklist MYSPACE_MUSIC_FADE_OUT_IN:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "MySpaceManager"

.field private static blacklist preset:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCurrentPreset()I
    .locals 1

    .line 45
    sget v0, Lcom/samsung/android/media/MySpaceManager;->preset:I

    return v0
.end method

.method public static blacklist playMySpaceEffect(I)V
    .locals 2
    .param p0, "effectPreset"    # I

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/media/MySpaceManager;->preset:I

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/media/MySpaceManager;->setParameter(I)V

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/MySpaceManager;->setParameter(I)V

    .line 56
    return-void
.end method

.method private static blacklist setParameter(I)V
    .locals 2
    .param p0, "presetType"    # I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g_effect_myspace_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setEffectParameters(Ljava/lang/String;)I

    .line 40
    sput p0, Lcom/samsung/android/media/MySpaceManager;->preset:I

    .line 41
    return-void
.end method
